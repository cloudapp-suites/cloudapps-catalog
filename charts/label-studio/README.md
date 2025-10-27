<div align="center">

🚀 **EDAS provides one-click application deployment. Try it now!** 

[![Deploy Now](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=89afd8a9-7023-44ba-8064-a87a9f0616d4)

</div>

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/ls_github_header.png"/>

![GitHub](https://img.shields.io/github/license/heartexlabs/label-studio?logo=heartex) ![label-studio:build](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/badge.svg) ![GitHub release](https://img.shields.io/github/v/release/heartexlabs/label-studio?include_prereleases)

[Website](https://labelstud.io/) • [Docs](https://labelstud.io/guide/) • [Twitter](https://twitter.com/heartexlabs) • [Join Slack Community <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/slack-mini.png" width="18px"/>](https://slack.labelstudio.heartex.com/?source=github-1)

## What is Label Studio?

<!-- <a href="https://labelstud.io/blog/release-130.html"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/LS-Hits-v1.3.png" align="right" /></a> -->

Label Studio is an open source data labeling tool. It lets you label data types like audio, text, images, videos, and time series with a simple and straightforward UI and export to various model formats. It can be used to prepare raw data or improve existing training data to get more accurate ML models.

- Try out Label Studio
- What you get from Label Studio
- Included templates for labeling data in Label Studio
- Set up machine learning models with Label Studio
- Integrate Label Studio with your existing tools

![Gif of Label Studio annotating different types of data](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/annotation_examples.gif)

Have a custom dataset? You can customize Label Studio to fit your needs. Read an [introductory blog post](https://towardsdatascience.com/introducing-label-studio-a-swiss-army-knife-of-data-labeling-140c1be92881) to learn more. 

## What you get from Label Studio

![Screenshot of Label Studio data manager grid view with images](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/labelstudio-ui.gif)

- **Multi-user labeling** sign up and login, when you create an annotation it's tied to your account.
- **Multiple projects** to work on all your datasets in one instance.
- **Streamlined design** helps you focus on your task, not how to use the software.
- **Configurable label formats** let you customize the visual interface to meet your specific labeling needs.
- **Support for multiple data types** including images, audio, text, HTML, time-series, and video. 
- **Import from files or from cloud storage** in Amazon AWS S3, Google Cloud Storage, or JSON, CSV, TSV, RAR, and ZIP archives. 
- **Integration with machine learning models** so that you can visualize and compare predictions from different models and perform pre-labeling.
- **Embed it in your data pipeline** REST API makes it easy to make it a part of your pipeline

## Included templates for labeling data in Label Studio 

Label Studio includes a variety of templates to help you label your data, or you can create your own using specifically designed configuration language. The most common templates and use cases for labeling include the following cases:

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/templates-categories.jpg" />

## Set up machine learning models with Label Studio

Connect your favorite machine learning model using the Label Studio Machine Learning SDK. Follow these steps:

1. Start your own machine learning backend server. See [more detailed instructions](https://github.com/heartexlabs/label-studio-ml-backend).
2. Connect Label Studio to the server on the model page found in project settings.

This lets you:

- **Pre-label** your data using model predictions. 
- Do **online learning** and retrain your model while new annotations are being created. 
- Do **active learning** by labeling only the most complex examples in your data.

## Integrate Label Studio with your existing tools

You can use Label Studio as an independent part of your machine learning workflow or integrate the frontend or backend into your existing tools.  

* Use the [Label Studio Frontend](https://github.com/heartexlabs/label-studio-frontend) as a separate React library. See more in the [Frontend Library documentation](https://labelstud.io/guide/frontend.html). 

## Ecosystem

| Project | Description |
|-|-|
| label-studio | Server, distributed as a pip package |
| [label-studio-frontend](https://github.com/heartexlabs/label-studio-frontend) | React and JavaScript frontend and can run standalone in a web browser or be embedded into your application. |  
| [data-manager](https://github.com/heartexlabs/dm2) | React and JavaScript frontend for managing data. Includes the Label Studio Frontend. Relies on the label-studio server or a custom backend with the expected API methods. | 
| [label-studio-converter](https://github.com/heartexlabs/label-studio-converter) | Encode labels in the format of your favorite machine learning library | 
| [label-studio-transformers](https://github.com/heartexlabs/label-studio-transformers) | Transformers library connected and configured for use with Label Studio |

## Roadmap

Want to use **The Coolest Feature X** but Label Studio doesn't support it? Check out our public roadmap!

## Citation

```tex
@misc{Label Studio,
  title={{Label Studio}: Data labeling software},
  url={https://github.com/heartexlabs/label-studio},
  note={Open source software available from https://github.com/heartexlabs/label-studio},
  author={
    Maxim Tkachenko and
    Mikhail Malyuk and
    Andrey Holmanyuk and
    Nikolai Liubimov},
  year={2020-2022},
}
```

## License

This software is licensed under the Apache 2.0 LICENSE © [Heartex](https://www.heartex.ai/). 2020-2021

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/opossum_looking.png" title="Hey everyone!" height="140" width="140" />
