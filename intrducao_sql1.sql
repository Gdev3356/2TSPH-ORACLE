SELECT 
    cli.nom_cliente "Nome cliente",
    cli.cod_cliente "Codigo Ciente",
    cli.tip_pessoa "Tipo cliente",
    des_endereco "Rua",
    num_endereco "numero",
    des_complemento "Complemeto",
    num_cep "cep",
    des_bairro "Bairro",
    nom_estado "Estado",
    nom_pais "Pais"
    
FROM

    endereco_cliente end
    join cliente cli on end.cod_cliente=cli.cod_cliente
    join cidade cd on end.cod_cidade = cd.cod_cidade
    join estado es on cd.cod_estado = es.cod_estado
    join pais ps on es.cod_pais = ps.cod_pais;
