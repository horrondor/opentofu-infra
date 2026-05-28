# OpenTofu Infrastructure (AWS VPC + Remote State)

## Overview

This project provisions AWS infrastructure using **OpenTofu (Terraform-compatible IaC tool)**.  
It focuses on a modular, scalable design with proper remote state management using **S3 backend and DynamoDB locking**.

The infrastructure includes a custom **VPC setup with public/private subnets, route tables, and internet gateway**, designed for production-like workflows.

---

## Architecture Highlights

- Infrastructure as Code using OpenTofu
- Modular design for reusability
- Remote state stored in AWS S3
- State locking using DynamoDB
- Environment-based structure (dev/prod ready)
- Clean separation of bootstrap and application infrastructure

---

## Tech Stack

- OpenTofu
- AWS (VPC, S3, DynamoDB, EC2-ready networking)
- Git & GitHub

---

---

## Prerequisites

- AWS CLI configured (`aws configure`)
- OpenTofu installed
- IAM permissions for:
  - S3
  - DynamoDB
  - VPC resources

---

## Getting Started

### 1. Clone the repository

```bash
git clone <https://github.com/horrondor/opentofu-infra.git>
cd <opentofu-infra>
