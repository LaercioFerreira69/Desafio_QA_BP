# language: en

  Feature: Feature para efetuar busca por telefone

  Scenario: Busca com usuário valido
    Given faço um POST para localhost:8080/pessoas com os seguintes valores:
      | codigo      |                     0 |
      | nome        | Rafael Teixeira       |
      | cpf         |            0123456789 |
      | logradouro  | Rua Alexandre Dumas   |
      | numero      |                   123 |
      | complemento | Empresa               |
      | bairro      | Chacara Santo Antonio |
      | cidade      | São Paulo             |
      | estado      | SP                    |
      | ddd         |                    11 |
      | telefone    |             985388877 |
    Then quando faço um GET localhost:8080/{ddd}/{numero} o usuário criado é retornado

  Scenario: Busca de usuário válido
    Given Faço um POST para localhost:8080/pessoas com os seguintes valores:
	      """json
	      {
	      "codigo": 0,
	      "nome": "Rafael Teixeira",
	      "cpf": "12345678909",
	      "enderecos": [
	      {
	      "logradouro": "Rua Alexandre Dumas",
	      "numero": 123,
	      "complemento": "Empresa",
	      "bairro": "Chacara Santo Antonio",
	      "cidade": "São Paulo",
	      "estado": "SP"
	      }
	      ],
	      "telefones": [
	      {
	      "ddd": "11",
	      "numero": "985388877"
	      }]
	      }
	      """
	 Then quando faço um GET localhost:8080/{ddd}/{numero} o usuário criado né retornado
