module Domain where

import Model

--Para criar funcoes
--Contem as funcoes que trabalham com os dados e executam as regras do projeto.
--Por Exemplo: calcular pontos, ordenar pilotos por classificacao, 
--calcular estatisticas, filtrar resultados.

-------------------------------------------------------------------------------------

--Existem funções relativas aos 4 tipos de dados: Piloto, Equipa, Corrida e Resultado.

--Algumas delas serão mais úteis/importantes do que outras na versão final do projeto,
--sendo que o objetivo deeste ficheiro para a primeira fase é ter diversas funções que se 
--estruturam de forma diferente.

--Algumas funções são de contagem, outras de verificação, outras de cálculo, etc.

--Este ficheiro podem vir a sofrer alterações com o desenrolar das fases do projeto

-------------------------------------------------------------------------------------

--Funcoes relativas ao tipo Piloto (7)


--(1)Funcao para devolver pontos de um piloto.
obterPontos :: Piloto -> Int 
obterPontos piloto = pontospiloto piloto


--(2)Funcao que devolve o numero de pilotos numa lista.
contarPilotos :: [Piloto] -> Int 
contarPilotos [] = 0 
contarPilotos (x:xs) = 1 + contarPilotos xs


--(3)Funcao que conta os pilotos de uma equipa
contarPilotosEquipa :: String -> [Piloto] -> Int
contarPilotosEquipa equipa [] = 0
contarPilotosEquipa equipa (x:xs)
    | equipapiloto x == equipa = 1 + contarPilotosEquipa equipa xs
    | otherwise = contarPilotosEquipa equipa xs


--(4)Funcao que conta os pilotos com mais de zero pontos
contarPilotosComPontos :: [Piloto] -> Int
contarPilotosComPontos [] = 0
contarPilotosComPontos (x:xs)
    | obterPontos x > 0 = 1 + contarPilotosComPontos xs
    | otherwise = contarPilotosComPontos xs


--(5)Funcao para procurar piloto por nome
existePiloto :: String -> [Piloto] -> Bool
existePiloto nome [] = False
existePiloto nome (x:xs)
    | nomepiloto x == nome = True
    | otherwise = existePiloto nome xs


--(6)Funcao para contar quantos pilotos de uma determinada nacionalidade existem
contarPilotosNacionalidade :: String -> [Piloto] -> Int
contarPilotosNacionalidade pais [] = 0
contarPilotosNacionalidade pais (x:xs)
    | nacionalidade x == pais = 1 + contarPilotosNacionalidade pais xs
    | otherwise = contarPilotosNacionalidade pais xs
    

--(7)Funcao para calcular o total de pontos de um determinado piloto
pontosTotaisPiloto :: String -> [Resultado] -> Int
pontosTotaisPiloto nome [] = 0
pontosTotaisPiloto nome (x:xs)
    | nomepilotoresultado x == nome = pontosobtidos x + pontosTotaisPiloto nome xs
    | otherwise = pontosTotaisPiloto nome xs




---------------------------------------------------------------------------------------

--Funcoes relativas ao tipo Equipa (4)


--(8)Funcao para contar o numero de equipas
contarEquipas :: [Equipa] -> Int
contarEquipas [] = 0
contarEquipas (x:xs) = 1 + contarEquipas xs


--(9)Funcao para calcular o total de pontos de todas as equipas
totalPontosEquipas :: [Equipa] -> Int
totalPontosEquipas [] = 0
totalPontosEquipas (x:xs) = pontosequipa x + totalPontosEquipas xs


--(10)Funcao para contar o numero de equipas de um determinado pais
contarEquipasPais :: String -> [Equipa] -> Int
contarEquipasPais pais [] = 0
contarEquipasPais pais (x:xs)
    | paisequipa x == pais = 1 + contarEquipasPais pais xs
    | otherwise = contarEquipasPais pais xs


--(11)Funcao para verificar se uma equipa existe
existeEquipa :: String -> [Equipa] -> Bool
existeEquipa nome [] = False
existeEquipa nome (x:xs)
    | nomeequipa x == nome = True
    | otherwise = existeEquipa nome xs




-----------------------------------------------------------------------------

--Funcoes relativas ao tipo Corrida (3)


--(12)Funcao para contar o numero de corridas
contarCorridas :: [Corrida] -> Int
contarCorridas [] = 0
contarCorridas (x:xs) = 1 + contarCorridas xs


--(13)Funcao para contar o numero de corridas de um determinado pais
contarCorridasPais :: String -> [Corrida] -> Int
contarCorridasPais pais [] = 0
contarCorridasPais pais (x:xs)
    | paisCorrida x == pais = 1 + contarCorridasPais pais xs
    | otherwise = contarCorridasPais pais xs


--(14)Funcao para verificar se uma corrida existe
existeCorrida :: String -> [Corrida] -> Bool
existeCorrida nome [] = False
existeCorrida nome (x:xs)
    | nomeCorrida x == nome = True
    | otherwise = existeCorrida nome xs




------------------------------------------------------------------------------

--Funcoes relativas ao tipo Resultado (6)


--(15)Funcao que calcula todos os pontos de todos os pilotos
totalPontosPilotos :: [Piloto] -> Int 
totalPontosPilotos [] = 0 
totalPontosPilotos (x:xs) = obterPontos x + totalPontosPilotos xs


--(16)Funcao para contar o numero de resultados
contarResultados :: [Resultado] -> Int
contarResultados [] = 0
contarResultados (x:xs) = 1 + contarResultados xs


--(17)Funcao para calcular o total de pontos de todos os resultados
totalPontosResultados :: [Resultado] -> Int
totalPontosResultados [] = 0
totalPontosResultados (x:xs) = pontosobtidos x + totalPontosResultados xs

--(18)Funcao para contar o numero de vitorias de um determinado piloto
contarVitorias :: String -> [Resultado] -> Int
contarVitorias nome [] = 0
contarVitorias nome (x:xs)
    | nomepilotoresultado x == nome && posicaofinal x == 1 = 1 + contarVitorias nome xs
    | otherwise = contarVitorias nome xs


--(19)Funcao para contar o numero de pódios de um determinado piloto
contarPodios :: String -> [Resultado] -> Int
contarPodios nome [] = 0
contarPodios nome (x:xs)
    | nomepilotoresultado x == nome && posicaofinal x <= 3 = 1 + contarPodios nome xs
    | otherwise = contarPodios nome xs


--(20)Funcao para contar o numero de corridas de um determinado piloto
contarCorridasPiloto :: String -> [Resultado] -> Int
contarCorridasPiloto nome [] = 0
contarCorridasPiloto nome (x:xs)
    | nomepilotoresultado x == nome = 1 + contarCorridasPiloto nome xs
    | otherwise = contarCorridasPiloto nome xs




