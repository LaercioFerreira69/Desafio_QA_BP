Feature: Validação de usuários

  Scenario: Inserção de novo usuário
    Given faço um POST para endpoint da api
    When envio um POST com os dados para o endpoint
    Then eu recebo uma retorno valido

  Scenario: Validação de novo usuário
    Given faço um GET para o endpoint da api
    Then eu recebo os dados previamente inseridos
  
  Scenario: Validação de CPF já cadastrado
    Given faço um POST para o endpoint da api
    When envio um POST com os dados do CPF já cadastrados no endpoint
    Then eu recebo um retorno de status informação inválida
    
  Scenario: Validação de Telefone já cadastrado
    Given faço um POST para o endpoint da api
    When envio um POST com os dados do Telefone já cadastrados no endpoint
    Then eu recebo um retorno de status informação inválida
  
  
    
    
