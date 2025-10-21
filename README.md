# 📊 Dashboard de Contratos

Este projeto consiste em um dashboard interativo desenvolvido em Streamlit para análise e acompanhamento de contratos, permitindo visualizar indicadores e tendências de forma dinâmica e intuitiva.

✨ Funcionalidades

- Exibição da quantidade total de contratos (ativos, vencidos e próximos do vencimento)

- Evolução temporal dos contratos iniciados e com vigência a vencer

- Comparação entre anos de início e vencimento

- Análise por comprador, com total de contratos vinculados

- Situação dos contratos por comprador (ativos, vencidos, a vencer)

- Gráficos interativos e dinâmicos desenvolvidos com Plotly

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

🌐 Estrutura e funcionamento
🏠 Página Principal

Apresenta indicadores com o número total de contratos, além da quantidade de contratos ativos, vencidos e próximos do vencimento.
Possui filtros interativos na barra lateral, que se conectam diretamente ao dataframe com todos os dados, permitindo ao usuário selecionar critérios específicos e visualizar as informações de acordo com suas necessidades.
<img width="1356" height="617" alt="contratos1" src="https://github.com/user-attachments/assets/0a118154-46e2-4991-a4f2-b8966753292a" />

📈 Página “Contratos”

Apresenta os mesmos indicadores da página principal, porém de forma gráfica, por meio de um gráfico de barras, que mostra a contagem total de contratos por situação (Ativo, Vencido ou A Vencer), e um gráfico de pizza, que representa a porcentagem de contratos em cada categoria.
<img width="1121" height="498" alt="contratos2" src="https://github.com/user-attachments/assets/dfe051dd-171e-4d1b-a3bc-e2fb57888f8a" />

📅 Página “Períodos”

Apresenta uma análise temporal da quantidade de contratos iniciados em cada período ao longo dos três últimos anos, além de uma segunda visualização que exibe a quantidade de contratos com vencimento distribuída pelos próximos anos.
Essa análise é fundamental para compreender os períodos de validade dos contratos, permitindo avaliar até quando cada contrato permanecerá ativo e quando deve ser iniciado o processo de renovação, caso seja de interesse da empresa.
<img width="1102" height="487" alt="contratos3" src="https://github.com/user-attachments/assets/b2bd974d-9f42-4f34-b5f0-a4d0274e469e" />

👤 Página “Compradores”

Apresenta a quantidade total de contratos vinculados a cada comprador, bem como a quantidade de contratos ativos e vencidos relacionados a cada um deles.
Essa análise é relevante para identificar os compradores com maior volume de contratos, possibilitando a avaliação de métricas e indicadores de desempenho associados a cada responsável.
<img width="1116" height="479" alt="contratos4" src="https://github.com/user-attachments/assets/13230b54-a52d-4b1d-a613-935179328a43" />

📘 Licença

Este projeto é de uso livre para fins educacionais e profissionais.
Sinta-se à vontade para contribuir ou adaptar conforme suas necessidades.
