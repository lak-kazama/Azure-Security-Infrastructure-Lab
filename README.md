# 🛡️ Azure Security Infrastructure Project
**Phase 1: Resource Governance & Networking**

## 📖 Project Goal
The goal of this project is to build a "Secure Scalable Perimeter." I am using **Terraform** to ensure that the infrastructure is repeatable and follows **AZ-500** security best practices.

## 🏗️ What I have built so far:
### 1. The Resource Group (`azurerm_resource_group`)
- **Understanding the Code:** In Azure, everything must live in a "Resource Group." 
- **Security Logic:** Think of this as a security boundary. In a real job, I would apply **RBAC (Role-Based Access Control)** here to decide which employees can touch these resources.
- **Tagging:** I added a `Portfolio-Lab` tag. This is a **CISA Audit** requirement so we can track costs and ownership.

### 2. The Virtual Network (`azurerm_virtual_network`)
- **Understanding the Code:** This is the private "fenced-in" area for my servers. 
- **Address Space:** I used `10.0.0.0/16`, which gives me plenty of room to create different "subnets" (like a private room for a database and a public room for a website).