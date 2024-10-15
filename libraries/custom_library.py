import yfinance as yf
from datetime import datetime, time

def pegar_preco_fechamento(sigla):
    sigla_yf = yf.Ticker(sigla)

    historico = sigla_yf.history(period="5d")
    print(historico)

    data_atual = datetime.now()
    horario_atual = data_atual.time()

    fechamento_mercado = time(17, 0) 

    if horario_atual < fechamento_mercado:
         preco_fechamento = historico['Close'].iloc[-2]  
         return f"{preco_fechamento:.2f}"
    else:
        preco_fechamento = historico['Close'].iloc[-1] 
        return f"{preco_fechamento:.2f}"
    
# print(pegar_preco_fechamento("COGN3.SA"))