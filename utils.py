import pandas as pd
import locale
from database import df

ordem_meses = ['Janeiro','Fevereiro','Marco','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro',
               'Novembro','Dezembro']

locale.setlocale(locale.LC_TIME, "pt_BR.UTF-8")

# Status dos Contratos
df_status = df['Status'].value_counts().reset_index(name='Quantidade')

# Filtro de vencimento por mês e ano
df_vencimento_mensal = df.set_index('Data Vencimento').groupby(pd.Grouper(freq='ME'))['Fornecedor'].count().reset_index()
df_vencimento_mensal['Ano'] = df_vencimento_mensal['Data Vencimento'].dt.year

# Valores dos anos de vencimento
anos_validos = df_vencimento_mensal.groupby('Ano')['Fornecedor'].sum()
anos_validos = anos_validos[anos_validos > 0].index
df_vencimento_mensal = df_vencimento_mensal[df_vencimento_mensal['Ano'].isin(anos_validos)]

# Filtro de início por mês e ano
df_inicio_mensal = df.set_index('Data Inicio').groupby(pd.Grouper(freq='ME'))['Fornecedor'].count().reset_index()
df_inicio_mensal['Ano'] = df_inicio_mensal['Data Inicio'].dt.year.astype(str)

# Valores dos anos de inicio
anos_validos = df_inicio_mensal.groupby('Ano')['Fornecedor'].sum()
anos_validos = anos_validos[anos_validos > 0].index
df_inicio_mensal = df_inicio_mensal[df_inicio_mensal['Ano'].isin(anos_validos)]

# Filtro de quantidade de contratos p/ comprador
df_compradores = pd.DataFrame(df.groupby('Comprador')['Fornecedor'].count().reset_index().sort_values(by='Fornecedor'))

# Filtro de contratos ativos e vencidos p/ comprador
df_ativo_vencido = df[df['Status'].isin(['Ativo','Vencido'])]
df_ativo_vencido = df_ativo_vencido.groupby(['Comprador','Status']).size().reset_index(name='Quantidade')

# Datas mínimas e máximas de início de vigência
data_min_inicio = df['Data Inicio'].min()
data_max_inicio = df['Data Inicio'].max()

# Datas mínimas e máximas de vencimento
data_min_venc = df['Data Vencimento'].min()
data_max_venc = df['Data Vencimento'].max()