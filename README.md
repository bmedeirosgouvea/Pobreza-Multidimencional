# 📊 Análise de Pobreza Multidimensional com R

Este projeto utiliza uma abordagem simplificada baseada no método Alkire-Foster para identificar famílias em situação de pobreza multidimensional.

---

## 💡 Objetivo

- Avaliar privações simultâneas nas áreas de educação, saneamento, moradia e renda
- Gerar um indicador agregado para identificar famílias em pobreza multidimensional
- Criar uma visualização clara da distribuição de privações

---

## 📁 Estrutura

```
pobreza_multidimensional_R/
├── dados_pobreza.csv                # Base de dados fictícia
├── pobreza_multidimensional.R       # Script em R
├── visualizacoes/
│   └── grafico_indicadores.png      # Gráfico gerado pelo R
└── README.md
```

---

## ▶️ Como executar

1. Instale os pacotes necessários no R:

```r
install.packages(c("dplyr", "ggplot2", "readr"))
```

2. Execute o script:

```r
source("pobreza_multidimensional.R")
```

3. O gráfico será salvo automaticamente na pasta `visualizacoes/`.

---

## 📈 Resultado

[![Distribuição das Privações](visualizacoes/grafico_indicadores.png)](visualizacoes/grafico_indicadores.png)



---

## 🙋‍♀️ Autora

**Bruna Gouvêa**  
🔗 [https://www.linkedin.com/in/bmedeirosgouvea/](https://www.linkedin.com/in/bmedeirosgouvea/)

---

> Este projeto utiliza dados simulados e tem fins educacionais.
