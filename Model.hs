module Model where

--Model para criar tipos e datas
--Define os tipos de dados que vamos utilizar no projeto.

---------------------------------------------------------------------------------------
--Nota: ainda não é possível associar um piloto a uma equipa (talvez mais tarde).
--      este ficheiro podem vir a sofrer alterações com o desenrolar das fases do projeto.
--------------------------------------------------------------------------------




--Tipo Piloto

data Piloto = Piloto
    { nomepiloto :: String
    , nacionalidade :: String
    , numeropiloto :: Int
    , equipapiloto :: String
    , pontospiloto :: Int
    } deriving (Show, Eq)



--Tipo Equipa

data Equipa = Equipa
    { nomeequipa :: String
    , paisequipa :: String
    , pontosequipa :: Int
    } deriving (Show, Eq)



--Tipo Corrida

data Corrida = Corrida
    { nomeCorrida :: String
    , circuito :: String
    , paisCorrida :: String
    , numeroRonda :: Int
    } deriving (Show, Eq)


--Tipo Resultado

data Resultado = Resultado
    { nomepilotoresultado :: String
    , nomecorridaresultado :: String
    , posicaofinal :: Int
    , pontosobtidos :: Int
    } deriving (Show, Eq)

