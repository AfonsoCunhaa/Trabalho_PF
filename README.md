

PROJETO DE GESTÃO DE UMA ÉPOCA DE FÓRMULA 1

------------------------------------------------------------------------------------------------------------------------------

1. Descrição

Este projeto consiste no desenvolvimento de uma aplicação em Haskell para a gestão de uma época de Fórmula 1.

O sistema permite representar pilotos, equipas, corridas e resultados, bem como realizar operações relacionadas com pontos, classificações e estatísticas.


------------------------------------------------------------------------------------------------------------------------------

2. Estrutura do projeto

- Model.hs     -  Define os tipos de dados fundamentais do projeto: Piloto, Equipa, Corrida e Resultado.
- Domain.hs    - Contém as funções puras responsáveis pelas operações e regras do domínio.
- TestData.hs  - Contém um conjunto inicial de dados para demonstrar e testar as funções.


------------------------------------------------------------------------------------------------------------------------------

3. Compilação

É necessário ter o compilador GHC instalado.


Para verificar se os módulos compilam corretamente, executar no terminal:
    ghc -fno-code Model.hs Domain.hs TestData.hs


-------------------------------------------------------------------------------------------------------------------------------

4. Execução e testes

Para carregar os módulos no GHCi:
    ghci Model.hs Domain.hs TestData.hs



E é possível testar as funções utilizando os dados definidos em `TestData.hs`:
   :module + Domain TestData






Depois testar com as funções como, por exemplo:
   contarPilotos pilotosTeste
   contarEquipas equipasTeste
   contarCorridas corridasTeste
   contarResultados resultadosTeste
   contarVitorias "Lando Norris" resultadosTeste



--------------------------------------------------------------------------------------------------------------------------------

5. Tecnologias utilizadas

- Linguagem de programação: Haskell
- Compilador: GHC
- Ambiente interativo: GHCi
- Controlo de versões: Git e GitHub


