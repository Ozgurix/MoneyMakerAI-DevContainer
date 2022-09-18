# MoneymakerAI-DevContainer

A VSCode DevContainer is a containerized development environment for Visual Studio Code.

This repository contains the DevContainer for developing MoneyMaker.AI

## How-To

Copy the folder `.devcontainer` into the MoneyMaker.AI repository and click on "Reopen in Container"

## Contents

```
.devcontainer           - Example DevContainer configuration for usage
.github                 - Github Action workflows to build the Containers
Dockerfile              - Basic DevContainer
Dockerfile.Baseimage    - MoneyMaker.AI Base Image
Dockerfile.GPU          - DevContainer with GPU Support
requirements.txt        - Python libraries list
```

## Local Build

```bash
# Base Image
docker build . -f Dockerfile.Baseimage -t moneymaker-baseimage 

# Basic DevContainer
docker build . -f Dockerfile.Basic -t moneymaker-ai-devcontainer

# GPU DevContainer
docker build . -f Dockerfile.GPU -t moneymaker-ai-devcontainer-gpu
```