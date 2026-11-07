module TestData where

import Model

---------------------------------------------------------------------------------------------------------

--Este ficheiro podem vir a sofrer alterações com o desenrolar das fases do projeto

---------------------------------------------------------------------------------------------------------


-- Pilotos de teste

pilotosTeste :: [Piloto]
pilotosTeste =
    [ Piloto "Lando Norris" "Reino Unido" 4 "McLaren" 43
    , Piloto "Oscar Piastri" "Austrália" 81 "McLaren" 43
    , Piloto "Charles Leclerc" "Mónaco" 16 "Ferrari" 30
    ]




-- Equipas de teste

equipasTeste :: [Equipa]
equipasTeste =
    [ Equipa "McLaren" "Reino Unido" 86
    , Equipa "Ferrari" "Itália" 30
    ]




-- Corridas de teste

corridasTeste :: [Corrida]
corridasTeste =
    [ Corrida "Grande Prémio da Austrália" "Albert Park" "Austrália" 1
    , Corrida "Grande Prémio do Japão" "Suzuka" "Japão" 2
    ]




-- Resultados de teste

resultadosTeste :: [Resultado]
resultadosTeste =
    [ Resultado "Lando Norris" "Grande Prémio da Austrália" 1 25
    , Resultado "Oscar Piastri" "Grande Prémio da Austrália" 2 18
    , Resultado "Charles Leclerc" "Grande Prémio da Austrália" 3 15
    , Resultado "Oscar Piastri" "Grande Prémio do Japão" 1 25
    , Resultado "Lando Norris" "Grande Prémio do Japão" 2 18
    , Resultado "Charles Leclerc" "Grande Prémio do Japão" 3 15
    ]