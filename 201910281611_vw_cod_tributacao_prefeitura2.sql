create or replace view vw_cod_tributacao_prefeitura as
  select id_empresa, ordem, des, cod
    from (select e.id_empresa,
                 1 ordem,
                 decode(m.cod_municipio_ibge, 3144805, '1 - Exigível') des,
                 decode(m.cod_municipio_ibge, 3144805, '1') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 2 ordem,
                 decode(m.cod_municipio_ibge, 3144805, '2 - Nao incidência') des,
                 decode(m.cod_municipio_ibge, 3144805, '2') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 3 ordem,
                 decode(m.cod_municipio_ibge, 3144805, '3 - isenção') des,
                 decode(m.cod_municipio_ibge, 3144805, '3') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 4 ordem,
                 decode(m.cod_municipio_ibge, 3144805, '4 - Exportação') des,
                 decode(m.cod_municipio_ibge, 3144805, '4') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 5 ordem,
                 decode(m.cod_municipio_ibge, 3144805, '5 - Imunidade') des,
                 decode(m.cod_municipio_ibge, 3144805, '5') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 6 ordem,
                 decode(m.cod_municipio_ibge, 3144805, '6 - Exigibilidade Suspensa por Decisão Judicial') des,
                 decode(m.cod_municipio_ibge, 3144805, '6') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 7 ordem,
                 decode(m.cod_municipio_ibge, 3144805, '7 - Exigibilidade Suspensa por Processo Administrativo') des,
                 decode(m.cod_municipio_ibge, 3144805, '7') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 8 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'T - Tributado em São Paulo') des,
                 decode(m.cod_municipio_ibge, 3550308, 'T') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 9 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'F - Tributado Fora de São Paulo') des,
                 decode(m.cod_municipio_ibge, 3550308, 'F') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 10 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'A - Tributado em São Paulo, porém Isento') des,
                 decode(m.cod_municipio_ibge, 3550308, 'A') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 11 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'B - Tributado Fora de São Paulo, porém Isento') des,
                 decode(m.cod_municipio_ibge, 3550308, 'B') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 12 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'D - Tributado em São Paulo com isencao parcial') des,
                 decode(m.cod_municipio_ibge, 3550308, 'D') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 13 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'M - Tributado em São Paulo, porém com indicacao de imunidade subjetiva') des,
                 decode(m.cod_municipio_ibge, 3550308, 'M') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 14 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'N - Tributado Fora de São Paulo, porém com indicacao de imunidade subjetiva') des,
                 decode(m.cod_municipio_ibge, 3550308, 'N') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 15 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'R - Tributado em São Paulo, porém com indicacao de imunidade objetiva') des,
                 decode(m.cod_municipio_ibge, 3550308, 'R') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 16 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'S - Tributado fora de São Paulo, porém com indicacao de imunidade objetiva') des,
                 decode(m.cod_municipio_ibge, 3550308, 'S') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 17 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'X - Tributado em São Paulo, porém Exigibilidade Suspensa') des,
                 decode(m.cod_municipio_ibge, 3550308, 'X') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 18 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'V - Tributado Fora de São Paulo, porém Exigibilidade Suspensa') des,
                 decode(m.cod_municipio_ibge, 3550308, 'V') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio
          union
          select e.id_empresa,
                 19 ordem,
                 decode(m.cod_municipio_ibge, 3550308, 'P - Exportação de Serviços') des,
                 decode(m.cod_municipio_ibge, 3550308, 'P') cod
            from tb_empresa   e,
                 tb_municipio m
           where e.id_municipio = m.id_municipio) mm
   where mm.des is not null
   order by id_empresa, ordem;
