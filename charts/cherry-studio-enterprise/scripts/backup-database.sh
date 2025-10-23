#!/bin/bash

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# 符号定义
CHECKMARK="\033[0;32m✓\033[0m"
CROSS="\033[0;31m✗\033[0m"
INFO="\033[0;34mℹ\033[0m"
ARROW="\033[0;36m➜\033[0m"
STAR="\033[1;33m★\033[0m"

# 打印标题
print_title() {
    echo -e "\n${CYAN}╔════════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${CYAN}║${WHITE}                   Cherry Studio 数据备份工具                   ${CYAN}║${NC}"
    echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝${NC}\n"
}

# 动态进度条
update_progress() {
    local percent=$1
    local message=$2
    local filled=$((percent * 50 / 100))

    # 清除当前行并回到行首
    printf "\r\033[K"

    # 打印进度条
    printf "${CYAN}进度: [${NC}"
    for ((i=0; i<filled; i++)); do printf "${GREEN}█${NC}"; done
    for ((i=filled; i<50; i++)); do printf "${WHITE}░${NC}"; done
    printf "${CYAN}] ${percent}%% ${message}${NC}"
}

# 完成进度条并换行
complete_progress() {
    local message=$1
    printf "\r\033[K"
    echo -e "${CHECKMARK} ${GREEN}${message}${NC}"
}

# 错误处理
handle_error() {
    local message=$1
    printf "\r\033[K"
    echo -e "${CROSS} ${RED}${message}${NC}"
    # 清理资源
    kubectl delete pod backup-pod >/dev/null 2>&1
    exit 1
}

BACKUP_FILE="cherry-studio-backup-$(date +%Y%m%d-%H%M%S).tar.gz"

print_title

echo -e "${STAR} ${YELLOW}开始时间: $(date '+%Y-%m-%d %H:%M:%S')${NC}"
echo -e "${INFO} ${WHITE}备份文件: ${BACKUP_FILE}${NC}\n"

# 开始备份流程
update_progress 0 "初始化..."
sleep 0.5

# 创建备份Pod
update_progress 10 "创建备份 Pod..."
kubectl run backup-pod --image=busybox --restart=Never \
  --overrides='{"spec":{"containers":[{"name":"backup","image":"busybox","command":["sleep","300"],"volumeMounts":[{"name":"data","mountPath":"/backup"}]}],"volumes":[{"name":"data","persistentVolumeClaim":{"claimName":"cherry-studio-enterprise-data"}}]}}' >/dev/null 2>&1

if [ $? -ne 0 ]; then
    handle_error "备份Pod创建失败"
fi

# 等待Pod就绪
update_progress 30 "等待 Pod 就绪..."
kubectl wait --for=condition=ready pod/backup-pod --timeout=60s >/dev/null 2>&1

if [ $? -ne 0 ]; then
    handle_error "Pod 启动超时"
fi

# 压缩数据
update_progress 50 "压缩数据..."
kubectl exec backup-pod -- tar -czf /tmp/backup.tar.gz -C /backup . >/dev/null 2>&1

if [ $? -ne 0 ]; then
    handle_error "数据压缩失败"
fi

# 传输文件
update_progress 80 "传输文件到本地..."
kubectl cp backup-pod:/tmp/backup.tar.gz ./$BACKUP_FILE >/dev/null 2>&1

if [ $? -ne 0 ]; then
    handle_error "文件传输失败"
fi

# 清理资源
update_progress 95 "清理临时资源..."

# 强制快速删除Pod，避免等待优雅关闭
kubectl delete pod backup-pod --force --grace-period=0 >/dev/null 2>&1 &
cleanup_pid=$!

# 等待清理完成，最多等待3秒
for i in {1..6}; do
    if ! kill -0 $cleanup_pid 2>/dev/null; then
        # 清理已完成
        update_progress 100 "完成"
        sleep 0.2
        complete_progress "备份完成！"
        break
    fi
    sleep 0.5
    if [ $i -eq 6 ]; then
        # 清理超时，但不影响备份结果
        printf "\r\033[K"
        echo -e "${CHECKMARK} ${GREEN}备份完成！${NC} ${YELLOW}(资源清理在后台继续...)${NC}"
    fi
done

echo ""

# 显示最终结果
echo -e "${GREEN}╔════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║${WHITE}                         备份成功！                            ${GREEN}║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════════╝${NC}\n"

echo -e "${CHECKMARK} ${GREEN}备份文件: ${WHITE}$BACKUP_FILE${NC}"
echo -e "${INFO} ${CYAN}文件大小: ${WHITE}$(ls -lh $BACKUP_FILE | awk '{print $5}')${NC}"
echo -e "${STAR} ${YELLOW}完成时间: $(date '+%Y-%m-%d %H:%M:%S')${NC}\n"

echo -e "${ARROW} ${PURPLE}您可以使用以下命令查看备份文件:${NC}"
echo -e "   ${WHITE}ls -la $BACKUP_FILE${NC}\n"