# **🚀 poc-beyla-spring-21**

Bem-vindo ao projeto **`poc-beyla-spring-21`**. Este repositório contém uma aplicação Spring Boot instrumentada com Beyla, pronta para ser implantada em Kubernetes e com monitoramento via Actuator.

## **🌟 Sobre o Projeto**

Este projeto integra Spring Boot com Beyla e Actuator para observabilidade e monitoramento, configurado para fácil implantação em Kubernetes.

## **🛠️ Configuração e Instalação**

Pré-requisitos:

- Docker
- Kubernetes (kubectl configurado)
- Gradle (para compilação do projeto)

## **🌐 Actuator e Beyla**

- **Actuator**: Oferece métricas da aplicação.
- **Beyla**: Proporciona instrumentação para observabilidade.

## **📦 Kubernetes com Kustomize**

Para implantar no Kubernetes, use o seguinte comando:

```bash
kubectl apply -k .
```

Este comando aplica as configurações necessárias definidas nos arquivos de Kustomize do projeto.

## **🔍 O que é eBPF?**

eBPF (Extended Berkeley Packet Filter) é uma tecnologia avançada no kernel do Linux que permite a execução de programas no kernel de forma segura e eficiente. É amplamente usada para monitoramento de rede, segurança, e desempenho de sistemas. Ela oferece flexibilidade e poder para estender as capacidades do kernel sem a necessidade de alterar seu código fonte ou carregar módulos do kernel.

## **📈 Monitoramento e Observabilidade**

Configurações para conectar Beyla ao [OpenTelemetry Collector](https://github.com/leozw/kubernetes-otel-collector).