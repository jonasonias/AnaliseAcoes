const pool = require('../db');

class Acoes {
    static async findAll_Setores() {
        const res = await pool.query('SELECT * FROM acoes_setores');
        return res.rows;
    }

    static async findOne_Setores(ticker) {
        const res = await pool.query('SELECT * FROM acoes_setores WHERE ticker = $1', [ticker]);
        return res.rows[0];
    }
    static async findAll_Atual() {
        const res = await pool.query('SELECT * FROM acoes_atualfinal');
        return res.rows;
    }

    static async findOne_Atual(ticker) {
        const res = await pool.query('SELECT * FROM acoes_atualfinal WHERE ticker = $1', [ticker]);
        return res.rows[0];
    }

    static async countIndicadoresValuation(ticker) {
        const query = `
            -- Consulta para o indicador DY
            SELECT
                'DY' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 6 AND 20 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.dy > x."2024" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2023" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2022" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2021" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2020" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2019" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2018" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2017" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2016" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2015" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2014" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2013" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2012" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2011" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2010" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2009" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END +
                CASE WHEN atual.dy > x."2008" AND atual.dy BETWEEN 6 AND 20 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.dy IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END 
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                dyfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador P/L
            SELECT
                'P/L' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.p_l < x."2024" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2023" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2022" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2021" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2020" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2019" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2018" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2017" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2016" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2015" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2014" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2013" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2012" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2011" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2010" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2009" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_l < x."2008" AND atual.p_l BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.p_l IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                plfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador PEG Ratio
            SELECT
                'PEG Ratio' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.peg_ratio < x."2024" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2023" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2022" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2021" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2020" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2019" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2018" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2017" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2016" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2015" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2014" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2013" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2012" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2011" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2010" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2009" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.peg_ratio < x."2008" AND atual.peg_ratio BETWEEN 0.1 AND 1 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.peg_ratio IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                peg_ratiofinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador PVP
            SELECT
                'P/VP' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.p_vp < x."2024" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2023" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2022" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2021" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2020" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2019" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2018" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2017" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2016" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2015" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2014" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2013" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2012" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2011" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2010" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2009" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_vp < x."2008" AND atual.p_vp BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.p_vp IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                pvpfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador EV/EBIT
            SELECT
                'EV/EBIT' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.ev_ebit < x."2024" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2023" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2022" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2021" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2020" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2019" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2018" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2017" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2016" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2015" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2014" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2013" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2012" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2011" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2010" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2009" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END +
                CASE WHEN atual.ev_ebit < x."2008" AND atual.ev_ebit BETWEEN 0.1 AND 8 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.ev_ebit IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                ev_ebitfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador EV/EBITDA
            SELECT
                'EV/EBITDA' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN x."2024" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (18 + CASE WHEN x."2024" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 1 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                ev_ebitdafinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            Union ALL

            -- Consulta para o indicador P/EBIT
            SELECT
                'P/EBIT' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.p_ebit < x."2024" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2023" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2022" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2021" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2020" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2019" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2018" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2017" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2016" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2015" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2014" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2013" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2012" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2011" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2010" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2009" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ebit < x."2008" AND atual.p_ebit BETWEEN 0.1 AND 10 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.p_ebit IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                p_ebitfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador P/EBITDA
            SELECT
                'P/EBITDA' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN x."2024" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 6 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (18 + CASE WHEN x."2024" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 1 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                p_ebitdafinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador P/Ativo
            SELECT
                'P/Ativo' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.p_ativo < x."2024" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2023" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2022" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2021" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2020" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2019" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2018" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2017" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2016" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2015" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2014" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2013" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2012" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2011" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2010" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2009" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativo < x."2008" AND atual.p_ativo BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.p_ativo IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                p_ativofinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador P/SR
            SELECT
                'P/SR' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.p_sr < x."2024" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2023" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2022" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2021" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2020" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2019" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2018" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2017" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2016" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2015" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2014" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2013" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2012" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2011" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2010" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2009" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_sr < x."2008" AND atual.p_sr BETWEEN 0.1 AND 2 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.p_sr IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                p_srfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador P/Cap. Giro
            SELECT
                'P/Cap. Giro' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.p_capitalgiro < x."2024" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2023" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2022" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2021" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2020" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2019" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2018" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2017" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2016" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2015" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2014" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2013" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2012" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2011" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2010" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2009" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_capitalgiro < x."2008" AND atual.p_capitalgiro BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.p_capitalgiro IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                p_capgirofinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador P/Ativo Circ. Liq.
            SELECT
                'P/Ativo Circ. Liq.' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.p_ativocirculante < x."2024" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2023" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2022" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2021" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2020" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2019" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2018" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2017" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2016" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2015" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2014" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2013" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2012" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2011" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2010" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2009" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.p_ativocirculante < x."2008" AND atual.p_ativocirculante BETWEEN 0.5 AND 2 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.p_ativocirculante IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                p_ativocircliqfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1
        `;

        try {
            const result = await pool.query(query, [ticker]);
            return result.rows;
        } catch (error) {
            console.error('Erro ao executar a consulta', error);
            throw new Error('Erro ao executar a consulta');
        }
    }

    static async countIndicadoresEndividamento(ticker) {
        const query = `
            -- Consulta para o indicador Dívida Líquida / Patrimônio Líquido
            SELECT
                'Dív Líq/Patrimônio Líq' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" < 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" < 2 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.divliq_pl < x."2024" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2023" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2022" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2021" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2020" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2019" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2018" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2017" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2016" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2015" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2014" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2013" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2012" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2011" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2010" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2009" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_pl < x."2008" AND atual.divliq_pl < 2 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.divliq_pl IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END 
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                divliq_plfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador Dívida Bruta / Patrimônio Líquido
            SELECT
                'Dív Bruta/Patrimônio Líq' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN x."2024" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0 AND 2 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0 AND 2 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (18 + CASE WHEN x."2024" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 1 ELSE 0 END 
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                divbruta_plfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador Dívida Líquida / EBIT
            SELECT
                'Dív Líq/EBIT' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0 AND 4 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.divliq_ebit < x."2024" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2023" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2022" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2021" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2020" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2019" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2018" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2017" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2016" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2015" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2014" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2013" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2012" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2011" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2010" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2009" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.divliq_ebit < x."2008" AND atual.divliq_ebit BETWEEN 0 AND 4 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.divliq_ebit IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END 
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                divliq_ebitfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador Dívida Liquida / EBITDA
            SELECT
                'Dív Liq/EBITDA' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN x."2024" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0 AND 3 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0 AND 3 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (18 + CASE WHEN x."2024" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 1 ELSE 0 END 
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                divliq_ebitdafinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador Patrimônio Líquido / Ativos
            SELECT
                'Patrimônio Líq/Ativos' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.pl_ativo > x."2024" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2023" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2022" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2021" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2020" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2019" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2018" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2017" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2016" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2015" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2014" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2013" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2012" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2011" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2010" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2009" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END +
                CASE WHEN atual.pl_ativo > x."2008" AND atual.pl_ativo BETWEEN 0.3 AND 1 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.pl_ativo IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END 
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                pl_ativosfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador Passivos / Ativos
            SELECT
                'Passivos/Ativos' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.passivo_ativo < x."2024" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2023" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2022" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2021" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2020" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2019" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2018" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2017" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2016" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2015" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2014" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2013" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2012" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2011" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2010" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2009" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END +
                CASE WHEN atual.passivo_ativo < x."2008" AND atual.passivo_ativo BETWEEN 0 AND 0.6 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.passivo_ativo IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END 
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                passivos_ativosfinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1

            UNION ALL

            -- Consulta para o indicador Liquidez Corrente
            SELECT
                'Liq Corrente' AS indicador,
                -- Contagem de valores entre x e y
                (CASE WHEN atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2024" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2023" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2022" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2021" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2020" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2019" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2018" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2017" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2016" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2015" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2014" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2013" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2012" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2011" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2010" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2009" BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN x."2008" BETWEEN 1 AND 4 THEN 1 ELSE 0 END
                ) +
                -- Contagem de vezes em que o valor atual é maior que os anos anteriores
                (
                CASE WHEN atual.liquidezcorrente > x."2024" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2023" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2022" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2021" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2020" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2019" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2018" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2017" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2016" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2015" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2014" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2013" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2012" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2011" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2010" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2009" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END +
                CASE WHEN atual.liquidezcorrente > x."2008" AND atual.liquidezcorrente BETWEEN 1 AND 4 THEN 1 ELSE 0 END
                ) AS count_Limite,
                -- Contagem de valores NULL
                (CASE WHEN atual.liquidezcorrente IS NULL THEN 1 ELSE 0 END +
                CASE WHEN x."2024" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2023" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2022" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2021" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2020" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2019" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2018" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2017" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2016" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2015" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2014" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2013" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2012" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2011" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2010" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2009" IS NULL THEN 2 ELSE 0 END +
                CASE WHEN x."2008" IS NULL THEN 2 ELSE 0 END 
                ) AS count_Null
            FROM
                acoes_atualfinal atual
            JOIN
                liq_correntefinal x ON atual.ticker = x.ticker
            WHERE
                atual.ticker = $1
        `;

        try {
            const result = await pool.query(query, [ticker]);
            return result.rows;
        } catch (error) {
            console.error('Erro ao executar a consulta', error);
            throw new Error('Erro ao executar a consulta');
        }
    }
}

module.exports = Acoes;
