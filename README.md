Kroton Automation - Comparação de valores do Mercado de Ações
<br>
Este projeto utiliza Robot Framework e Python para automatizar a verificação de dados de mercado financeiro disponível no site da Kroton. 
A automação acessa a página da Kroton, extrai os valores das empresas Cogna e Vasta e do índice IBOVESPA disponibilizados no rodapé. 
Em seguida, compara esses valores com os dados mais recentes de fechamento do mercado, obtidos por meio da API do Yahoo Finanças.

🚀 Começando
<br>
Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de desenvolvimento e teste.

📋 Pré-requisitos
<br>
De que coisas você precisa para instalar as dependencias da automação e como executá-la?
- Ter o Python instalado em sua máquina:
  - Acesse https://www.python.org/downloads/
  - Mantenha as duas opções grifadas marcadas e clique em Install Now e, após isso, avance até o final.
![image](https://github.com/user-attachments/assets/0e8d0160-37d8-4f08-a999-06d69cae829b)
  - Procure na barra de pesquisa do seu computador por "Variáveis de ambiente".
  - Certifique-se de que está com as duas variáveis do Python no seu PATH. Caso não esteja, é necessário você saber onde está o Python instalado no seu computador e colocar o caminho manualmente.
![image](https://github.com/user-attachments/assets/fb44d57c-6cb5-4586-8c0a-8a685fbed3bf)
- Necessário também ter um git no seu computador, para realizar o git clone.
- Necessário ter alguma IDE, o Robot consegue rodar em vários lugares, mas eu gosto de usar no VSCode :).
  - Link de instalação do Visual: https://code.visualstudio.com/download. Sem mistério, só avançar até o final.
  - Você com certeza vai precisar dessas extensões:
  <br>
![image](https://github.com/user-attachments/assets/07627bcb-be62-4b27-a1ca-d6e274b83c5c)




🔧 Instalação
<br>
  Abra o CMD como administrador e siga esse passo a passo de instalação:
- pip install -U robotframework
- pip install -U robotframework-seleniumlibrary
- pip install -U robotframework-requests
- pip install -U webdriver-manager
- pip install yfinance --upgrade --no-cache-dir

Para mais informações, consultar documentação do RobotFramework e da API do Yahoo Finanças:
  - https://robotframework.org/
  - https://algotrading101.com/learn/yahoo-finance-api-guide/

No final, verifique com o comando "pip list" se os itens estão instalados corretamente:
![image](https://github.com/user-attachments/assets/73109fe2-333f-4c89-a01e-477ff48fe411)


⚙️ Executando os testes
<br>
No prompt do VSCode, só digitar o comando e verá a execução da automação:
robot --outputdir results tests/
![image](https://github.com/user-attachments/assets/99b38723-b9f1-4c75-b1b5-413bddbe004d)



🛠️ Construído com:
- RobotFramework - O framework web usado
- Python - Para criar uma library customizada chamado a API do Yahoo Finanças

✒️ Autores:
<br>
Gabriela dos Santos Neves

⌨️ com ❤️ por Gabriela Neves 😊
