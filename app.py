import pandas as pd
import streamlit as st
from database import df
from utils import data_min_inicio, data_max_inicio, data_min_venc, data_max_venc
from graficos import *

st.set_page_config(page_title="Dashboard de Contratos", layout="wide")
st.title("Dashboard de Contratos")

df_filtrado = df.copy()

filtro_comprador = st.sidebar.multiselect('Comprador', sorted(df['Comprador'].unique()))
if filtro_comprador:
    df_filtrado = df_filtrado[df_filtrado['Comprador'].isin(filtro_comprador)]

filtro_fornecedor = st.sidebar.multiselect('Fornecedor', sorted(df['Fornecedor'].unique()))
if filtro_fornecedor:
    df_filtrado = df_filtrado[df_filtrado['Fornecedor'].isin(filtro_fornecedor)]

filtro_status = st.sidebar.multiselect('Status', sorted(df['Status'].unique()))
if filtro_status:
    df_filtrado = df_filtrado[df_filtrado['Status'].isin(filtro_status)]

filtro_inicio = st.sidebar.date_input('Início da Vigência', [data_min_inicio, data_max_inicio])
if len(filtro_inicio) == 2:
    inicio, fim = pd.to_datetime(filtro_inicio[0]), pd.to_datetime(filtro_inicio[1])
    df_filtrado = df_filtrado[(df_filtrado['Data Inicio'] >= inicio) & (df_filtrado['Data Inicio'] <= fim)]

filtro_vencimento = st.sidebar.date_input('Período de Vencimento', [data_min_venc, data_max_venc])
if len(filtro_vencimento) == 2:
    inicio, fim = pd.to_datetime(filtro_vencimento[0]), pd.to_datetime(filtro_vencimento[1])
    df_filtrado = df_filtrado[(df_filtrado['Data Vencimento'] >= inicio) & (df_filtrado['Data Vencimento'] <= fim)]

aba1, aba2, aba3, aba4 = st.tabs(['Dados','Contratos','Períodos','Compradores'])

with aba1:
    col1, col2 = st.columns(2)

    with col1:
        st.metric('Total de Contratos', len(df_filtrado))
        vencidos = df_filtrado.loc[df['Status'] == 'Vencido']
        st.metric('Contratos Vencidos', len(vencidos))
    with col2:
        ativos = df_filtrado.loc[df_filtrado['Status'] == 'Ativo']
        st.metric('Contartos Ativos', len(ativos))
        outros = len(df_filtrado) - len(ativos) - len (vencidos)
        st.metric('Contratos a Vencer', outros)

    df_filtrado['Data Inicio'] = df_filtrado['Data Inicio'].dt.strftime("%d-%m-%Y")
    df_filtrado['Data Vencimento'] = df_filtrado['Data Vencimento'].dt.strftime("%d-%m-%Y")

    st.dataframe(df_filtrado)

with aba2:
    col1, col2 = st.columns(2)

    with col1:
        st.plotly_chart(graf_barras, use_container_width=True)
    with col2:
        st.plotly_chart(graf_pizza, use_container_width=True)

with aba3:
    col1, col2 = st.columns(2)

    with col1:
        st.plotly_chart(graf_inicio, use_container_width=True)
    with col2:
        st.plotly_chart(graf_vencimento, use_container_width=True)

with aba4:
    col1, col2 = st.columns(2)

    with col1:
        st.plotly_chart(graf_compradores, use_container_width=True)
    with col2:
        st.plotly_chart(graf_status, use_container_width=True)