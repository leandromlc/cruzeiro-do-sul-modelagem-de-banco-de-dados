UPDATE DONO
SET telefone = '(11) 98877-0000', email = 'carlos.silva.novo@email.com'
WHERE id_dono = 1; 

UPDATE CONSULTA
SET status = 'Realizada'
WHERE id_consulta = 3; 

UPDATE VETERINARIO
SET especialidade = 'Clínica Geral e Ortopedia'
WHERE crmv = 'SP-54321';
