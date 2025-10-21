# 📊 Dashboard de Contratos

Este projeto é um **dashboard interativo em Streamlit** para análise de contratos, permitindo visualizar:

- Quantidade total de contratos vencidos e vigentes
- Evolução mensal do início e vencimento de vigência
- Comparação entre anos
- Quantidade de contratos por comprador
- Situaçao dos contratos por comprador
- Gráficos dinâmicos com Plotly

📦 Requisitos

- Python 3.10+
- Bibliotecas: Streamlit, Plotly, Pandas

🚀 Como rodar localmente

Clone este repositório:
```bash
git clone https://github.com/seu-usuario/dashboard-contratos.git
cd dashboard-contratos
pip install -r requirements.txt
streamlit run app.py
```

🌐 Como funciona:
- A página principal apresenta indicadores que exibem o número total de contratos, bem como a quantidade de contratos ativos, vencidos e próximos do vencimento. Além disso, conta com filtros interativos na barra lateral, que se conectam diretamente ao dataframe contendo todos os dados, permitindo ao usuário selecionar os critérios desejados e visualizar as informações de acordo com suas necessidades.
<img width="1356" height="617" alt="contratos1" src="https://github.com/user-attachments/assets/0a118154-46e2-4991-a4f2-b8966753292a" />

- A página secundária chamada "

