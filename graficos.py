import plotly.express as px
from utils import df_status, df_vencimento_mensal, df_inicio_mensal, df_compradores, df_ativo_vencido

graf_barras = px.bar(
    df_status,
    x = 'Status',
    y = 'Quantidade',
    title='Quantidade de Contratos p/ Status'
)

graf_pizza = px.pie(
    df_status,
    names = 'Status',
    color = 'Status',
    values = 'Quantidade',
    title = 'Porcentagem de Contratos p/ Status'
)

graf_inicio = px.line(
    df_inicio_mensal,
    x = 'Data Inicio',
    y = 'Fornecedor',
    markers = True,
    color = 'Ano',
    title = 'Início de Vigência dos Contratos'
)
graf_inicio.update_layout(yaxis_title = 'Quantidade')

graf_vencimento = px.line(
    df_vencimento_mensal,
    x = 'Data Vencimento',
    y = 'Fornecedor',
    markers = True,
    color = 'Ano',
    title = 'Vencimento dos Contratos'
)
graf_vencimento.update_layout(yaxis_title = 'Quantidade')

graf_compradores = px.bar(
    df_compradores,
    x = 'Comprador',
    y = 'Fornecedor',
    title = 'Contratos Totais por Comprador',
    color = 'Comprador',
    barmode = 'stack'
)
graf_compradores.update_layout(xaxis_title = 'Comprador', yaxis_title = 'Quantidade')

graf_status = px.bar(
    df_ativo_vencido,
    x = 'Comprador',
    y = 'Quantidade',
    title = 'Contratos Ativos/Vencidos por Comprador',
    color = 'Status',
    barmode = 'stack'
)