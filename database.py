import pandas as pd

caminho_planilha = "dados/Contratos.xlsx"

# Carrega base de dados
df = pd.read_excel(caminho_planilha, header=1)

# Altera o nome das colunas
df.columns = ['Fornecedor','Comprador','Descrição','Data Inicio','Data Vencimento']

# Transforma as colunas 'Data' em datetime
df['Data Vencimento'] = pd.to_datetime(df['Data Vencimento'], errors='coerce')
df['Data Inicio'] =pd.to_datetime(df['Data Inicio'], errors='coerce')

# Calcula se o contrato está vencido com base na data de hoje
df['Dias para vencer'] = (df['Data Vencimento'] - pd.Timestamp.today()).dt.days
df['Status'] = df['Dias para vencer'].apply(lambda x: 'Vencido' if x < 0 else (f'{int(x)} dias para vencer' if x < 30 else 'Ativo'))

# Realiza o tratamento dos dados na coluna 'Comprador'
df['Comprador'] = df['Comprador'].str.strip()

# Exclui a coluna "dias para vencer" após realizar os cálculos necessários
df = df.drop(columns=['Dias para vencer'])