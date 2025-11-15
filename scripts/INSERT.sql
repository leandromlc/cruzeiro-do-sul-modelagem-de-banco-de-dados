INSERT INTO ESPECIE (nome_especie) VALUES
('Canino'),
('Felino'),
('Ave'),
('Roedor');

INSERT INTO VETERINARIO (nome, crmv, especialidade) VALUES
('Dra. Carla Gomes', 'SP-12345', 'Clínica Geral de Pequenos Animais'),
('Dr. Ricardo Lima', 'SP-54321', 'Ortopedia Canina'),
('Dra. Beatriz Costa', 'RJ-45678', 'Medicina Felina');

INSERT INTO VACINA (nome_vacina, tipo, doses_recomendadas) VALUES
('V10 (Polivalente Canina)', 'Viral', 3),
('Antirrábica', 'Viral', 1),
('V4 (Polivalente Felina)', 'Viral', 2),
('Giárdia', 'Protozoário', 2);

INSERT INTO DONO (nome, telefone, email, endereco) VALUES
('Carlos Silva', '(11) 98877-6655', 'carlos.silva@email.com', 'Rua das Flores, 123, São Paulo'),
('Ana Souza', '(21) 99988-7766', 'ana.souza@email.com', 'Av. Copacabana, 456, Rio de Janeiro'),
('Pedro Martins', '(11) 97766-5544', 'pedro.martins@email.com', 'Rua Augusta, 789, São Paulo');

INSERT INTO RACA (nome_raca, id_especie) VALUES
('Pastor Alemão', 1),  
('Siamês', 2),         
('Poodle', 1),         
('Golden Retriever', 1),
('Maine Coon', 2),      
('Calopsita', 3);    

INSERT INTO ANIMAL (nome, data_nascimento, sexo, id_dono, id_raca) VALUES
('Rex', '2020-05-10', 'M', 1, 1),        
('Fígaro', '2022-01-15', 'M', 2, 2),      
('Bolinha', '2023-07-20', 'F', 1, 3),    
('Thor', '2019-03-30', 'M', 3, 4);       

INSERT INTO CONSULTA (data_hora, status, id_animal, id_veterinario) VALUES
('2025-11-10 10:00:00', 'Realizada', 1, 1), 
('2025-11-11 14:00:00', 'Realizada', 2, 3), 
('2025-11-12 09:30:00', 'Agendada', 4, 2), 
('2025-11-12 11:00:00', 'Cancelada', 1, 1); 

INSERT INTO ATENDIMENTO (sintomas, diagnostico, tratamento_prescrito, id_consulta) VALUES
(
    'Animal apático, tosse seca e febre.',
    'Traqueobronquite infecciosa (Gripe Canina)',
    'Antibiótico por 7 dias e repouso.',
    1 
),
(
    'Animal com espirros frequentes e secreção nasal.',
    'Rinotraqueíte Felina',
    'Limpeza nasal e anti-inflamatório.',
    2 
);

INSERT INTO ATENDIMENTO_VACINA (id_atendimento, id_vacina, data_aplicacao, lote_vacina) VALUES
(1, 2, '2025-11-10', 'LOTE-ARB-2025-A'); 

INSERT INTO ATENDIMENTO_VACINA (id_atendimento, id_vacina, data_aplicacao, lote_vacina) VALUES
(2, 2, '2025-11-11', 'LOTE-ARB-2025-B'), 
(2, 3, '2025-11-11', 'LOTE-V4F-2025-C');  