const express = require('express');
const Multiplos = require('../models/Multiplos');

const router = express.Router();

router.get('/dy/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const dyData = await Multiplos.findOne(ticker, 'dyfinal');
        if (!dyData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(dyData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/pl/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const plData = await Multiplos.findOne(ticker, 'plfinal');
        if (!plData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(plData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/peg_ratio/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const peg_ratioData = await Multiplos.findOne(ticker, 'peg_ratiofinal');
        if (!peg_ratioData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(peg_ratioData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/pvp/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const pvpData = await Multiplos.findOne(ticker, 'pvpfinal');
        if (!pvpData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(pvpData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/ev_ebit/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const ev_ebitData = await Multiplos.findOne(ticker, 'ev_ebitfinal');
        if (!ev_ebitData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(ev_ebitData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/ev_ebitda/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const ev_ebitdaData = await Multiplos.findOne(ticker, 'ev_ebitdafinal');
        if (!ev_ebitdaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(ev_ebitdaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/p_ebit/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const p_ebitData = await Multiplos.findOne(ticker, 'p_ebitfinal');
        if (!p_ebitData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(p_ebitData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/p_ebitda/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const p_ebitdaData = await Multiplos.findOne(ticker, 'p_ebitdafinal');
        if (!p_ebitdaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(p_ebitdaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/vpa/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const vpaData = await Multiplos.findOne(ticker, 'vpafinal');
        if (!vpaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(vpaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/p_ativo/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const p_ativoData = await Multiplos.findOne(ticker, 'p_ativofinal');
        if (!p_ativoData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(p_ativoData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/lpa/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const lpaData = await Multiplos.findOne(ticker, 'lpafinal');
        if (!lpaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(lpaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/p_sr/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const p_srData = await Multiplos.findOne(ticker, 'p_srfinal');
        if (!p_srData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(p_srData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/p_capgiro/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const p_capgiroData = await Multiplos.findOne(ticker, 'p_capgirofinal');
        if (!p_capgiroData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(p_capgiroData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/p_ativocircliq/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const p_ativocircliqData = await Multiplos.findOne(ticker, 'p_ativocircliqfinal');
        if (!p_ativocircliqData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(p_ativocircliqData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/divliq_pl/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const divliq_plData = await Multiplos.findOne(ticker, 'divliq_plfinal');
        if (!divliq_plData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(divliq_plData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/divbruta_pl/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const divbruta_plData = await Multiplos.findOne(ticker, 'divbruta_plfinal');
        if (!divbruta_plData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(divbruta_plData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/divliq_ebit/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const divliq_ebitData = await Multiplos.findOne(ticker, 'divliq_ebitfinal');
        if (!divliq_ebitData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(divliq_ebitData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/divliq_ebitda/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const divliq_ebitdaData = await Multiplos.findOne(ticker, 'divliq_ebitdafinal');
        if (!divliq_ebitdaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(divliq_ebitdaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/pl_ativos/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const pl_ativosData = await Multiplos.findOne(ticker, 'pl_ativosfinal');
        if (!pl_ativosData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(pl_ativosData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/passivos_ativos/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const passivos_ativosData = await Multiplos.findOne(ticker, 'passivos_ativosfinal');
        if (!passivos_ativosData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(passivos_ativosData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/liq_corrente/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const liq_correnteData = await Multiplos.findOne(ticker, 'liq_correntefinal');
        if (!liq_correnteData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(liq_correnteData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/m_bruta/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const m_brutaData = await Multiplos.findOne(ticker, 'm_brutafinal');
        if (!m_brutaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(m_brutaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/m_ebit/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const m_ebitData = await Multiplos.findOne(ticker, 'm_ebitfinal');
        if (!m_ebitData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(m_ebitData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/m_ebitda/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const m_ebitdaData = await Multiplos.findOne(ticker, 'm_ebitdafinal');
        if (!m_ebitdaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(m_ebitdaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/m_liquida/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const m_liquidaData = await Multiplos.findOne(ticker, 'm_liquidafinal');
        if (!m_liquidaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(m_liquidaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/roe/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const roeData = await Multiplos.findOne(ticker, 'roefinal');
        if (!roeData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(roeData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/roa/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const roaData = await Multiplos.findOne(ticker, 'roafinal');
        if (!roaData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(roaData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/roic/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const roicData = await Multiplos.findOne(ticker, 'roicfinal');
        if (!roicData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(roicData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/giro_ativos/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const giro_ativosData = await Multiplos.findOne(ticker, 'giro_ativosfinal');
        if (!giro_ativosData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(giro_ativosData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/cagr_receita5anos/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const cagr_receita5anosData = await Multiplos.findOne(ticker, 'cagr_receita5anosfinal');
        if (!cagr_receita5anosData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(cagr_receita5anosData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/cagr_lucros5anos/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const cagr_lucros5anosData = await Multiplos.findOne(ticker, 'cagr_lucros5anosfinal');
        if (!cagr_lucros5anosData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(cagr_lucros5anosData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/proventos/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const proventosData = await Multiplos.findOne(ticker, 'proventosfinal');
        if (!proventosData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(proventosData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

router.get('/payout/:ticker', async (req, res) => {
    const { ticker } = req.params;
    try {
        const payoutData = await Multiplos.findOne(ticker, 'payoutfinal');
        if (!payoutData) {
            return res.status(404).send('Dados não encontrados');
        }
        res.json(payoutData);
    } catch (err) {
        res.status(500).send('Erro ao obter dados históricos');
    }
});

module.exports = router;
