  #language: pt

  Funcionalidade: Consultar endereço
  Eu como usuário posso consultar endereço via CEP

  Cenário: Consultar endereço via CEP
  Dado que eu informe o cep "04863080"
  Quando efetuar a requisição na API get
  Então é retornado o cep "04863-080"