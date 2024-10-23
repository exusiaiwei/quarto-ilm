
<div align="center">
  <h1>🎓 Quarto ILM 模板</h1>
  <p>
    <a href="README.md">English</a> |
    <b>简体中文</b>
  </p>
  <!-- 徽章 -->
  <p>
    <img src="https://img.shields.io/badge/quarto-模板-blue" alt="quarto 模板">
    <img src="https://img.shields.io/github/stars/exusiaiwei/quarto-ilm" alt="星标数">
    <img src="https://img.shields.io/github/forks/exusiaiwei/quarto-ilm" alt="分支数">
    <img src="https://img.shields.io/github/license/exusiaiwei/quarto-ilm" alt="许可证">
    <img src="https://img.shields.io/github/last-commit/exusiaiwei/quarto-ilm" alt="最后提交">
  </p>
</div>

## 📚 目录

- [📚 目录](#-目录)
- [🌟 关于](#-关于)
- [✨ 特性](#-特性)
- [📥 安装](#-安装)
- [🚀 使用](#-使用)
- [🔧 自定义](#-自定义)
- [🤝 贡献](#-贡献)
- [📄 许可证](#-许可证)

## 🌟 关于

Quarto ILM 是一个多功能、简洁且极简的非虚构写作模板，改编自 Typst 的 ['ilm' 模板](https://github.com/talal/ilm)。'Ilm'（乌尔都语：عِلْم）发音为 /ə.ləm/，是乌尔都语中"知识"的意思。这个 Quarto 模板非常适合用于课堂笔记、报告和书籍编写。

## ✨ 特性

- 简洁极简的设计
- 标题页
- 目录
- 不同类型图形的索引（图片、表格、代码块）
- 动态页脚，显示章节标题（顶级标题）
- 支持 Iosevka 字体（默认使用 Fira Mono）

## 📥 安装

要使用此模板，请在终端中运行以下命令：

```bash
quarto use template exusiaiwei/quarto-ilm
```

这将创建一个包含所有必要文件的新目录，帮助您快速开始。

## 🚀 使用

安装后，您可以通过修改 Quarto 文档中的 YAML 元数据来自定义模板。目前支持以下元数据选项：

```yaml
title: "ILM Typst 模板示例"
author: "姓名"
date: "YYYY-MM-DD"
abstract: "本文档展示了 Quarto 的 ILM 模板的特性。"
bibliography: refs.bib
biblio-style: apa
format:
  ilm-typst: default
```

## 🔧 自定义

您可以通过修改 `_extensions/ilm-typst` 文件来进一步自定义模板。请随意调整样式和布局以满足您的需求。

## 🤝 贡献

欢迎贡献！如果您有任何建议或遇到任何问题，请随时提交 Pull Request 或开启 Issue。

## 📄 许可证

本项目采用 MIT 许可证 - 详情请见 [LICENSE](LICENSE) 文件。

<div align="center">
  <p>
    <a href="#-quarto-ilm-模板">返回顶部</a>
  </p>
</div>
