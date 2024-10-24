<div align="center">
  <h1>🎓 Quarto Ilm Template</h1>
  <p>  </p>
  <!-- Badges -->
  <p>
    <img src="https://img.shields.io/badge/quarto-template-blue" alt="quarto template">
    <img src="https://img.shields.io/github/stars/exusiaiwei/quarto-ilm" alt="stars">
    <img src="https://img.shields.io/github/forks/exusiaiwei/quarto-ilm" alt="forks">
    <img src="https://img.shields.io/github/license/exusiaiwei/quarto-ilm" alt="license">
    <img src="https://img.shields.io/github/last-commit/exusiaiwei/quarto-ilm" alt="last-commit">
  </p>
</div>

## 📚 Table of Contents

- [📚 Table of Contents](#-table-of-contents)
- [🌟 About](#-about)
- [✨ Features](#-features)
- [📥 Installation](#-installation)
- [🚀 Usage](#-usage)
- [🔧 Customization](#-customization)
- [🤝 Contributing](#-contributing)
- [📄 License](#-license)

## 🌟 About

Quarto Ilm is a versatile, clean, and minimal template for non-fiction writing, adapted from the  [Typst 'ilm' template](https://github.com/talal/ilm). 'Ilm' (Urdu: عِلْم), pronounced as /ə.ləm/, is the Urdu term for knowledge. This Quarto template is ideal for class notes, reports, and books.

## ✨ Features

- Clean and minimal design
- Title page
- Table of contents
- Indices for different types of figures (images, tables, code blocks)
- Dynamic running footer with chapter title (top-level heading)
- Support for Iosevka font (fallback to Fira Mono)

## 📥 Installation

To use this template, run the following command in your terminal:

```bash
quarto use template exusiaiwei/quarto-ilm
```

This will create a new directory with all the files needed to get you started.

## 🚀 Usage

After installation, you can customize the template by modifying the YAML metadata in your Quarto document. Currently, the following metadata options are supported:

Click here [template.pdf](template.pdf) to view the sample PDF generated using this template.

```yaml
title: "ILM Typst Template Example"
author: "Your Name"
date: "YYYY-MM-DD"
abstract: "This document demonstrates the features of the ILM Typst template for Quarto."
bibliography: refs.bib
biblio-style: apa
format:
  ilm-typst: default
```

## 🔧 Customization

You can further customize the template by modifying the `_extensions/ilm-typst` files. Feel free to adjust the styling and layout to suit your needs.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request or open an Issue if you have any suggestions or encounter any problems.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

<div align="center">
  <p>
    <a href="#-quarto-ilm-template">Back to Top</a>
  </p>
</div>
