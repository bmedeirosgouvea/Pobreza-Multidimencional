# pobreza_multidimensional.R

# Pacotes
library(dplyr)
library(ggplot2)
library(readr)

# Dados
dados <- read_csv("dados_pobreza.csv")

# Indicadores binários de privação
dados <- dados %>%
  mutate(
    priv_educ = ifelse(anos_estudo_adulto < 5, 1, 0),
    priv_escola = ifelse(criancas_na_escola == 0, 1, 0),
    priv_agua = ifelse(agua_acesso == 0, 1, 0),
    priv_saneamento = ifelse(saneamento == 0, 1, 0),
    priv_luz = ifelse(eletricidade == 0, 1, 0),
    priv_piso = piso_terra,
    priv_bens = ifelse(bens_duraveis < 2, 1, 0),
    priv_renda = ifelse(renda_per_capita < 400, 1, 0)
  ) %>%
  mutate(
    total_privacoes = priv_educ + priv_escola + priv_agua + priv_saneamento +
                      priv_luz + priv_piso + priv_bens + priv_renda,
    pobre_multidimensional = ifelse(total_privacoes >= 3, 1, 0)
  )

# Proporção de pobreza
prop_pobreza <- mean(dados$pobre_multidimensional)
cat("Proporção de famílias em pobreza multidimensional:", round(prop_pobreza * 100, 2), "%\n")

# Visualização
dados %>%
  count(total_privacoes) %>%
  ggplot(aes(x = as.factor(total_privacoes), y = n)) +
  geom_col(fill = "steelblue") +
  labs(title = "Distribuição do Total de Privações",
       x = "Total de Privações",
       y = "Número de Famílias") +
  theme_minimal()

ggsave("visualizacoes/grafico_indicadores.png", width = 7, height = 5)
