import yfinance as yf
from datetime import datetime, time

def pegar_preco_fechamento(sigla):
    sigla_yf = yf.Ticker(sigla)

    historico = sigla_yf.history(period="5d")

    data_atual = datetime.now()
    horario_atual = data_atual.time()

    fechamento_mercado = time(17, 0)  # 17:00

    if horario_atual < fechamento_mercado:
      
        if len(historico) > 1:
            preco_fechamento = historico['Close'].iloc[-2]  
            return f"{preco_fechamento:.2f}"
    else:
        preco_fechamento = historico['Close'].iloc[-1] 
        return f"{preco_fechamento:.2f}"