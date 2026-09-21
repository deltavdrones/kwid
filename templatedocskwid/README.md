# 📄 RT — Sistemas Embarcados 2026

> **Relatório Técnico — Sistemas Embarcados**  
> EletroQuad SAE Brasil · Axia Energia 2026  
> Equipe **Delta V Drones** · Escola Politécnica da UPE

---

## 🚁 Sobre o Projeto

Este repositório contém o código-fonte em **LaTeX** do Relatório Técnico do setor de **Sistemas Embarcados** da equipe Delta V Drones, desenvolvido para a competição **EletroQuad SAE Brasil 2026**, patrocinada pela Axia Energia.

O relatório documenta a arquitetura completa do drone **Logan** — desde a definição de requisitos, seleção de componentes e disposição física até a justificativa técnica das escolhas e as conclusões do projeto.

---

## 📁 Estrutura do Repositório

```
rtsistembas2026/
├── main.tex                  # Documento principal (ponto de entrada LaTeX)
├── deltav.cls                # Classe LaTeX customizada da equipe Delta V
├── references.bib            # Referências bibliográficas (BibTeX)
├── capitulos/
│   ├── 1_introducao.tex      # Introdução e escopo do setor
│   ├── 2_requisitos.tex      # Requisitos funcionais, não funcionais e de segurança
│   ├── 3_arquitetura.tex     # Arquitetura do sistema embarcado
│   ├── 4_justificativa.tex   # Análise e justificativa do projeto
│   └── 5_conclusao.tex       # Conclusão
├── capa/                     # Arquivos da capa do relatório
├── imagens/                  # Figuras e imagens utilizadas no documento
└── .gitignore                # Ignora arquivos de build do LaTeX
```

---

## 📋 Seções do Relatório

| # | Seção | Descrição |
|---|-------|-----------|
| 1 | Introdução | Contexto da equipe, competição, escopo e responsabilidades do setor |
| 2 | Requisitos de Projeto | Requisitos funcionais, não funcionais, restrições e camadas de segurança regulamentares |
| 3 | Arquitetura do Sistema Embarcado | Diagrama, módulos (propulsão, alimentação, navegação, sensoriamento, comunicação) e disposição física |
| 4 | Análise e Justificativa do Projeto | Critérios de seleção e justificativa técnica por módulo |
| 5 | Conclusão | Síntese das decisões de engenharia e resultado do desenvolvimento |

---

## 🛠️ Como Compilar

### Pré-requisitos

- **LaTeX** distribuição completa:
  - Linux: `TeX Live` (`sudo apt install texlive-full`)
  - Windows: `MiKTeX` + **Strawberry Perl** ([strawberryperl.com](https://strawberryperl.com/))
- **latexmk** (incluso no TeX Live; no MiKTeX, instalar via MiKTeX Console)
- **VS Code** com extensão **LaTeX Workshop** (recomendado)

### Compilação via terminal

```bash
# Clonar o repositório
git clone https://github.com/givaneto81/rtsistembas2026.git
cd rtsistembas2026

# Compilar com latexmk (gera main.pdf)
latexmk -pdf -interaction=nonstopmode main.tex

# Limpar arquivos de build
latexmk -c
```

### Compilação via VS Code

Abra o projeto no VS Code com a extensão **LaTeX Workshop** instalada e use `Ctrl+Alt+B` para compilar. O PDF será gerado automaticamente.

> ⚠️ **Windows:** Certifique-se de que o Strawberry Perl está instalado e o sistema foi reiniciado antes de compilar. Verifique com `perl --version` e `latexmk --version` no terminal.

---

## 🔄 Fluxo de Trabalho Git

O projeto é desenvolvido em dois ambientes sincronizados via Git/GitHub:

- **Linux Mint** (máquina principal) — VS Code + TeX Live + latexmk
- **Windows 10** (máquina secundária) — VS Code + MiKTeX + Strawberry Perl

```bash
# Atualizar antes de editar (sempre!)
git pull

# Após edições
git add .
git commit -m "descrição clara da mudança"
git push
```

> 💡 O `main.pdf` **não é versionado** (está no `.gitignore`). Cada colaborador compila localmente.

---

## 👥 Equipe

**Delta V Drones** — Escola Politécnica da Universidade de Pernambuco (Poli-UPE)

| Membro | Função |
|--------|--------|
| Gilvan Neto | Líder de Sistemas Embarcados |

---

## 🏁 Competição

**EletroQuad SAE Brasil 2026 · Axia Energia**  
Missões: *Bouncing 2.0*, *Hang the Right Wire*, *Faulty or Not?*  
Drone: **Logan** (quadrotor S500)

---

<p align="center">
  <i>Delta V Drones · Poli-UPE · 2026</i>
</p>
