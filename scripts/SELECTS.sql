SELECT
    d.nome AS Nome_Dono,
    d.telefone AS Telefone_Dono,
    a.nome AS Nome_Animal,
    a.data_nascimento,
    r.nome_raca AS Raca,
    e.nome_especie AS Especie
FROM
    ANIMAL AS a
JOIN
    DONO AS d ON a.id_dono = d.id_dono
JOIN
    RACA AS r ON a.id_raca = r.id_raca
JOIN
    ESPECIE AS e ON r.id_especie = e.id_especie
WHERE
    e.nome_especie = 'Canino' 
ORDER BY
    d.nome, a.nome;

SELECT
    a.nome AS Nome_Animal,
    c.data_hora AS Data_Consulta,
    c.status AS Status,
    v.nome AS Veterinario,
    v.especialidade
FROM
    CONSULTA AS c
JOIN
    ANIMAL AS a ON c.id_animal = a.id_animal
JOIN
    VETERINARIO AS v ON c.id_veterinario = v.id_veterinario
WHERE
    a.nome = 'Rex'
ORDER BY
    c.data_hora DESC;

SELECT
    c.data_hora AS Data_Atendimento,
    a.nome AS Paciente,
    v.nome AS Veterinario_Responsavel,
    at.sintomas,
    at.diagnostico,
    at.tratamento_prescrito,
    vac.nome_vacina AS Vacina_Aplicada,
    av.data_aplicacao,
    av.lote_vacina
FROM
    ATENDIMENTO AS at
JOIN
    CONSULTA AS c ON at.id_consulta = c.id_consulta
JOIN
    ANIMAL AS a ON c.id_animal = a.id_animal
JOIN
    VETERINARIO AS v ON c.id_veterinario = v.id_veterinario
LEFT JOIN 
    ATENDIMENTO_VACINA AS av ON at.id_atendimento = av.id_atendimento
LEFT JOIN
    VACINA AS vac ON av.id_vacina = vac.id_vacina
WHERE
    at.id_atendimento = 1;