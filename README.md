# ☁️ Provisionamento de Servidor Web Nginx na AWS EC2 com Terraform

Este repositório contém a automação de infraestrutura como código (IaC) utilizando **Terraform** para provisionar uma instância EC2 rodando **Nginx** na AWS, configurada com um Security Group customizado e exibição de dados de acesso via Outputs[cite: 5, 6, 9].

---

## 🛠️ Tecnologias Utilizadas

- **Terraform** (v1.x)
- **AWS EC2** (Elastic Compute Cloud)
- **AWS Security Group**[cite: 5]
- **Amazon Linux 2023**[cite: 6]
- **Nginx Web Server**[cite: 6]

---

## 🎯 O que foi implementado

- **Infraestrutura de Rede & Segurança (`security_group.tf`):**
  - Criação de um Security Group (`sg-web-dev`) com liberação de tráfego de entrada para HTTP (porta 80) e SSH (porta 22)[cite: 5].
  - Regra de saída (*egress*) liberada para a internet para permitir o descarregamento de pacotes[cite: 5].

- **Servidor de Aplicação (`main.tf`):**
  - Provisionamento de uma instância EC2 `t2.micro` com Amazon Linux 2023[cite: 6].
  - Automação via `user_data` (script Bash) para atualização do sistema, instalação e inicialização automática do Nginx com uma página HTML personalizada[cite: 6].

- **Parametrização & Modularização (`variables.tf`):**
  - Definição de variáveis para região AWS, ambiente de trabalho e responsável pela infraestrutura[cite: 10].

- **Exibição de Dados (`outputs.tf`):**
  - Exibição automática do IP público, DNS público e URL de acesso ao servidor diretamente no terminal após a aplicação.

---

## 📁 Estrutura do Projeto

```text
.
├── main.tf              # Configuração do provedor AWS e recurso EC2
├── security_group.tf    # Definição das regras de firewall (Security Group)
├── variables.tf         # Declaração das variáveis do projeto
├── outputs.tf           # Saídas de dados (IP público, DNS, URL)
├── .gitignore           # Ficheiros e estados ignorados pelo Git
└── README.md            # Documentação do projeto