SELECT ticker, companyname, sectorname, subsectorname, segmentname, price, dy, p_l, peg_ratio, p_vp, ev_ebit, p_ebit, vpa, p_ativo, lpa, p_sr, p_capitalgiro, p_ativocirculante, margembruta, margemebit, margemliquida, roe, roa, roic, giroativos, dividaliquidapatrimonioliquido, dividaliquidaebit, 
pl_ativo, passivo_ativo, liquidezcorrente, receitas_cagr5, lucros_cagr5, liquidezmediadiaria, valormercado
FROM acoes_atual
ORDER BY ticker;