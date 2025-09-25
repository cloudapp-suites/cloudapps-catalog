# Farfalle

Open-source AI-powered search engine. (Perplexity Clone)

Run local LLMs (**llama3**, **gemma**, **mistral**, **phi3**), custom LLMs through **LiteLLM**, or use cloud models (**Groq/Llama3**, **OpenAI/gpt4-o**)

https://github.com/rashadphz/farfalle/assets/20783686/9527a8c9-a13b-4e53-9cda-a3ab28d671b2

Please feel free to contact me on [Twitter](https://twitter.com/rashadphz) or [create an issue](https://github.com/rashadphz/farfalle/issues/new) if you have any questions.

## 💻 Live Demo

[farfalle.dev](https://farfalle.dev/) (Cloud models only)

## 📖 Overview

- 🛠️ Tech Stack
- 🏃🏿‍♂️ Getting Started
- 🚀 Deploy

## 🛣️ Roadmap

- [x] Add support for local LLMs through Ollama
- [x] Docker deployment setup
- [x] Add support for [searxng](https://github.com/searxng/searxng). Eliminates the need for external dependencies.
- [x] Create a pre-built Docker Image
- [x] Add support for custom LLMs through LiteLLM
- [x] Chat History
- [x] Expert Search
- [ ] Chat with local files

## 🛠️ Tech Stack

- Frontend: [Next.js](https://nextjs.org/)
- Backend: [FastAPI](https://fastapi.tiangolo.com/)
- Search API: [SearXNG](https://github.com/searxng/searxng), [Tavily](https://tavily.com/), [Serper](https://serper.dev/), [Bing](https://www.microsoft.com/en-us/bing/apis/bing-web-search-api)
- Logging: [Logfire](https://pydantic.dev/logfire)
- Rate Limiting: [Redis](https://redis.io/)
- Components: [shadcn/ui](https://ui.shadcn.com/)

## Features
- Search with multiple search providers (Tavily, Searxng, Serper, Bing)
- Answer questions with cloud models (OpenAI/gpt4-o, OpenAI/gpt3.5-turbo, Groq/Llama3)
- Answer questions with local models (llama3, mistral, gemma, phi3)
- Answer questions with any custom LLMs through [LiteLLM](https://litellm.vercel.app/docs/providers)
- Search with an agent that plans and executes the search for better results

## 🏃🏿‍♂️ Getting Started Locally

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Ollama](https://ollama.com/download) (If running local models)
  - Download any of the supported models: **llama3**, **mistral**, **gemma**, **phi3**
  - Start ollama server `ollama serve`

### Get API Keys

- [Tavily (Optional)](https://app.tavily.com/home)
- [Serper (Optional)](https://serper.dev/dashboard)
- [OpenAI (Optional)](https://platform.openai.com/api-keys)
- [Bing (Optional)](https://www.microsoft.com/en-us/bing/apis/bing-web-search-api)
- [Groq (Optional)](https://console.groq.com/keys)

### Quick Start:
```
git clone https://github.com/rashadphz/farfalle.git
cd farfalle && cp .env-template .env
```
Modify .env with your API keys (Optional, not required if using Ollama)

Start the app:
```
docker-compose -f docker-compose.dev.yaml up -d
```

Wait for the app to start then visit [http://localhost:3000](http://localhost:3000).

For custom setup instructions, see custom-setup-instructions.md

## Use Farfalle as a Search Engine

To use Farfalle as your default search engine, follow these steps:
1. Visit the settings of your browser
2. Go to 'Search Engines'
3. Create a new search engine entry using this URL: http://localhost:3000/?q=%s.
4. Add the search engine.
