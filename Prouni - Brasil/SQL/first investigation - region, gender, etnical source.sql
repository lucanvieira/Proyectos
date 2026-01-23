# Select by Gender


SELECT 
    SEXO_BENEFICIARIO_BOLSA as Sexo,
    COUNT(*) as total
FROM dim_beneficiario
WHERE SEXO_BENEFICIARIO_BOLSA IN ('M', 'F')
GROUP BY 1;

# Select by Gender / percentage


SELECT 
    SEXO_BENEFICIARIO_BOLSA as Sexo,
    COUNT(*) as Total,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as Porcentaje
FROM dim_beneficiario
WHERE SEXO_BENEFICIARIO_BOLSA IN ('M', 'F')
GROUP BY SEXO_BENEFICIARIO_BOLSA;

# Select by Etnic and Gender / PERCENTAGE 
SELECT 
    SEXO_BENEFICIARIO_BOLSA as Sexo,
    RACA_BENEFICIARIO_BOLSA as Etnia,
    COUNT(*) as Total,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as Porcentaje
FROM dim_beneficiario
WHERE SEXO_BENEFICIARIO_BOLSA IN ('M', 'F')
GROUP BY SEXO_BENEFICIARIO_BOLSA, RACA_BENEFICIARIO_BOLSA;


SELECT 
    b.SEXO_BENEFICIARIO_BOLSA as Sexo,
    b.RACA_BENEFICIARIO_BOLSA as Etnia,
    l.SIGLA_UF_BENEFICIARIO_BOLSA as Estado,
    COUNT(*) as Total,
    COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as Porcentaje_Total
FROM dim_beneficiario b
LEFT JOIN fato_bolsa f ON b.beneficiario_id = f.beneficiario_id
LEFT JOIN dim_localidade l ON f.localidade_id = l.localidade_id  
WHERE b.SEXO_BENEFICIARIO_BOLSA IN ('M', 'F')
GROUP BY b.SEXO_BENEFICIARIO_BOLSA, b.RACA_BENEFICIARIO_BOLSA, 
         l.SIGLA_UF_BENEFICIARIO_BOLSA
ORDER BY Porcentaje_Total DESC
LIMIT 10;

WITH dados_agregados AS (
    SELECT 
        COALESCE(b.SEXO_BENEFICIARIO_BOLSA, 'Não Informado') as Sexo,
        COALESCE(b.RACA_BENEFICIARIO_BOLSA, 'Não Informada') as Etnia,
        COALESCE(l.SIGLA_UF_BENEFICIARIO_BOLSA, 'Não Informado') as Estado,
        COUNT(*) as Total,
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() as Porcentaje_Total
    FROM dim_beneficiario b
    LEFT JOIN fato_bolsa f ON b.beneficiario_id = f.beneficiario_id
    LEFT JOIN dim_localidade l ON f.localidade_id = l.localidade_id  
    WHERE b.SEXO_BENEFICIARIO_BOLSA IN ('M', 'F') 
       OR b.SEXO_BENEFICIARIO_BOLSA IS NULL
    GROUP BY b.SEXO_BENEFICIARIO_BOLSA, b.RACA_BENEFICIARIO_BOLSA, 
             l.SIGLA_UF_BENEFICIARIO_BOLSA
)
SELECT 
    Sexo,
    Etnia,
    Estado,
    Total,
    ROUND(Porcentaje_Total, 2) as Porcentaje_Total,
    CONCAT(ROUND(Porcentaje_Total, 2), '%') as Porcentaje_Formatado
FROM dados_agregados
ORDER BY Porcentaje_Total DESC
LIMIT 10;

# luc@n
