# Claude Code 知识库

本目录包含 AI 相关 GitHub 项目，涵盖 AI 助手、编码代理、LLM 框架、部署工具等领域，用于本地知识库管理 + 基于仓库给 AI 工具/产品构建建议。

默认克隆路径：`~/github`（可按你的服务器路径修改）

---

## AI & Assistants

### [clawdbot](/clawdbot)
个人 AI 助手 - 本地优先运行，支持 WhatsApp、Telegram、Slack 等多消息渠道，含 Gateway 控制平面、多代理路由、语音唤醒等功能，兼容 Anthropic Claude、OpenAI 模型。
核心技术栈：Python、LLM API 集成、消息协议适配
适用场景：个人多平台 AI 助手搭建、本地 AI 服务代理

### [open-interpreter](/open-interpreter)
开源代码执行助手 - 本地运行，支持自然语言调用代码执行、文件操作、系统命令，兼容 Claude/OpenAI，可直接操作本地文件与环境。
核心技术栈：Python、代码沙箱、LLM 函数调用
适用场景：本地代码自动化、文件批量处理、系统操作辅助

### [WellAlly-health](/WellAlly-health)
智能医疗助手 - 结合 Claude AI 技术的医疗健康应用，通过自然语言交互帮助用户记录症状、管理药物、追踪病历、获取多学科会诊分析，701+ Stars。
核心技术栈：Python、JavaScript、HTML/CSS、Shell
适用场景：智能健康管理系统、医疗咨询应用、个人健康记录

### [self-system](/self-system)
AI 数字分身系统 - 通过自然语言对话渐进式构建你的数字分身，AI 实时生成代码并自动部署到 Docker 容器，系统可自生长出新能力。
核心技术栈：Vue 3、Express、Docker-in-Docker、Supabase、WebSocket
适用场景：AI 编程助手、个人数字分身、自生长系统搭建

### [nextclaw](/nextclaw)
全能个人 AI 助手 - 轻量级开源 AI 助手框架，支持 12+ AI 提供商（OpenAI/Anthropic/Gemini/DeepSeek 等）和 10+ 消息渠道（Discord/Telegram/Slack/微信/QQ 等），本地运行保护隐私。
核心技术栈：Node.js、浏览器 UI、多渠道适配
适用场景：个人 AI 助手搭建、多平台消息聚合、本地 AI 服务

## AI Coding Agents

### [opencode](/opencode)
开源 AI 编码代理 - 提供 CLI + 桌面应用，支持 npm/brew 安装，基于 TypeScript/Node.js 构建，含终端 UI、Web 界面，可对接 Claude 完成代码生成/调试/重构。
核心技术栈：TypeScript、Node.js、LSP、前端 UI
适用场景：AI 辅助编码、代码审查、项目脚手架生成

### [oh-my-opencode](/oh-my-opencode)
OpenCode 增强版 - 社区驱动的配置与提示词集合，含后台代理、专业代理（Oracle/Librarian/前端工程师）、LSP/AST 工具、MCP 服务器，完整兼容 Claude Code。
核心技术栈：TypeScript、代理编排、提示词工程、AST 解析
适用场景：AI 编码代理定制化、多代理协作编码、复杂项目开发辅助

### [DeepDiagram](/DeepDiagram)
AI 可视化工具 - 开源 AI 图表生成工具，将自然语言转换为思维导图、Mermaid 图表和 Echarts 图表，即时将想法转化为结构化视觉图，731+ Stars。
核心技术栈：TypeScript、Python、React、图表可视化
适用场景：AI 图表生成、思维导图创建、数据可视化

## LLM Frameworks & Core Libraries

### [langchain](/langchain)
大语言模型开发框架 - 支持 LLM 调用、向量存储、检索增强（RAG）、智能体编排，兼容 Claude/OpenAI 等主流模型，提供 Python/JS 双版本。
核心技术栈：Python/TypeScript、RAG、向量数据库、智能体框架
适用场景：AI 应用快速开发、RAG 系统搭建、多步骤 AI 任务编排

### [transformers](/transformers)
Hugging Face transformer 库 - 提供预训练模型（LLM/多模态）加载、微调、推理，支持 PyTorch/TensorFlow，覆盖 NLP/CV 等任务。
核心技术栈：Python、PyTorch/TensorFlow、预训练模型、微调
适用场景：本地 LLM 部署、模型微调、多模态 AI 开发

## Development & Deployment Tools

### [skills](/skills/github-kb)
GitHub 知识库管理工具 - 基于 gh CLI 实现仓库搜索、克隆、更新，维护 CLAUDE.md 目录，支持 Issues/PR 管理，适配本地 GitHub 知识库工作流。
核心技术栈：gh CLI、Shell/Python、Markdown 解析
适用场景：批量管理 GitHub 仓库、本地知识库维护、gh 命令自动化

### [llama.cpp](/llama.cpp)
本地 LLM 推理引擎 - 轻量、高性能，支持 CPU/GPU 推理，兼容 LLaMA/Mistral 等开源模型，无需复杂环境，可直接本地运行大模型。
核心技术栈：C/C++、GGUF 格式、模型量化、本地推理
适用场景：离线 LLM 部署、低资源设备 AI 运行、本地模型推理优化

### [dompdf.js](/dompdf.js)
前端 PDF 生成工具 - 单行代码将 HTML 转换为矢量 PDF，支持生成数千页大型文档，纯前端实现无需后端服务，806+ GitHub Stars。
核心技术栈：TypeScript、JavaScript、HTML/CSS、Canvas
适用场景：前端报表生成、文档导出、PDF 打印预览

### [cloudimgs](/cloudimgs)
云图 - 极简风格图床服务，支持 NAS 部署、密钥认证、灵活 API 接口，兼容 PicGo 插件，459+ Stars。
核心技术栈：JavaScript、Node.js、Docker、API 设计
适用场景：私有图床搭建、NAS 图片管理、自建云存储服务

### [pdfcraft](/pdfcraft)
隐私优先 PDF 工具箱 - 浏览器本地运行的 90+ 专业 PDF 工具，支持编辑、转换、合并、拆分、加密，无需上传服务器，2935+ Stars，788+ Forks。
核心技术栈：JavaScript、TypeScript、Fluent UI、CSS/HTML
适用场景：在线 PDF 处理、隐私敏感文档操作、PDF 工具集成

### [goread](/goread)
本地电子书阅读器 - 轻量级跨平台阅读应用，支持 EPUB/PDF 等格式，基于 Tauri v2 构建，提供 Android/iOS/Desktop 多端支持，377+ Stars。
核心技术栈：TypeScript、Rust、Tauri v2、Kotlin、Swift
适用场景：本地电子书管理、跨平台阅读器开发、离线阅读应用

### [hongdown](/hongdown)
Markdown 格式化工具 - 强制执行 Hong Minhee 的 Markdown 风格规范，支持 CommonMark/GFM，基于 Rust 构建，168+ Stars。
核心技术栈：Rust、TypeScript、JavaScript、Nix
适用场景：Markdown 代码格式化、文档规范统一、编辑器集成

### [nginxpulse](/nginxpulse)
Nginx 日志分析面板 - 轻量级 Nginx 访问日志分析与可视化工具，提供实时统计、PV 过滤、IP 归属地与客户端解析，2154+ Stars。
核心技术栈：Go、Vue、TypeScript、Python
适用场景：Web 服务器监控、访问日志分析、流量统计

### [mail-studio](/mail-studio)
现代邮件编辑器 - 轻松创建美观且响应式的邮件内容，提供可视化编辑体验，174+ Stars。
核心技术栈：TypeScript、React、CSS/HTML
适用场景：邮件模板设计、EDM 营销邮件、邮件编辑器开发

### [AirScan-QR](/AirScan-QR)
二维码跨设备传输 - 极简高效的开源 Web 工具，通过二维码动态流解决跨设备、跨网络环境下的数据传输痛点，287+ Stars。
核心技术栈：HTML、JavaScript、Python
适用场景：跨设备文件传输、无网络数据分享、二维码应用

### [building-sunlight-simulator](/building-sunlight-simulator)
楼盘采光模拟工具 - 轻量级纯前端的楼盘规划与采光模拟工具链，支持从规划图标注到 3D 阴影可视化的完整工作流，392+ Stars。
核心技术栈：JavaScript、HTML/CSS、Canvas
适用场景：建筑采光分析、楼盘规划可视化、日照模拟

### [pure-genealogy](/pure-genealogy)
家庭族谱系统 - 基于 Supabase 的在线族谱管理系统，支持家庭成员关系管理、族谱树展示，306+ Stars。
核心技术栈：TypeScript、React、Supabase、CSS
适用场景：家谱网站建设、家庭关系管理、族谱树可视化

### [relationship-ts](/relationship-ts)
中国亲戚关系计算器 - 根据中国传统文化计算亲戚称谓关系的工具，90+ Stars。
核心技术栈：TypeScript、JavaScript、HTML/CSS
适用场景：亲戚关系计算、中国传统文化应用、关系图谱

### [easy-vibe-coding-repos](/easy-vibe-coding-repos)
Vibe Coding 示例项目 - Vue 3 + Express 全栈示例，展示汽车产品展示页面，融合 AI 辅助编程理念。
核心技术栈：Vue 3、Vue Router、Vite、Express、Node.js
适用场景：前端模板学习、全栈项目参考、Vibe Coding 实践

### [independent-development-marketing](/independent-development-marketing)
独立开发者推广策略指南 - 完整的独立开发者推广策略指南，包含底层原理、平台选择、材料准备、私域建设等体系化内容。
核心技术栈：Markdown、运营方法论
适用场景：独立开发者推广、产品营销、流量获取

---

## 知识库更新规则（给 Claude 看）

1. **新增仓库**：按「分类 → 项目名 → 描述 → 技术栈 → 适用场景」格式添加，路径为本地克隆的相对路径；
2. **分类规则**：按「AI 助手/编码代理/LLM 框架/部署工具」划分，新增领域可新建分类；
3. **信息更新**：定期用 gh 拉取仓库最新代码，同步 README 核心信息到描述中；
4. **提问规则**：基于本知识库，结合用户 AI 想法，匹配对应仓库，给出技术选型、实现步骤、产品化建议。
