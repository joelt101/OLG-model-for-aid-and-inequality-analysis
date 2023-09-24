syms cdelta cthetar caidt ctheta caidtt cn cnc cnh cnc ce cct cs cctt cb ceuler ckt calpha calphar cct cr cw

eqn1 = (caidt*cdelta*cr*cthetar - caidtt*cn*cnc*ctheta - caidtt*cn*cnh*ctheta + cdelta*chbar*cr*cw + caidtt*cb*cn*cnh*ctheta*cw)/(cr*(cdelta + cnc + cnh - cb*cnh*cw)) == cs;

eqn2 = (cnh*(caidtt*cn*ctheta + caidt*cr*cthetar + chbar*cr*cw))/(cr*(cdelta + cnc + cnh - cb*cnh*cw)) == ce;

eqn3 = (cnc*(caidtt*cn*ctheta + caidt*cr*cthetar + chbar*cr*cw))/(cr*(cdelta + cnc + cnh - cb*cnh*cw)) == cct;

eqn4 = (cdelta*(caidtt*cn*ctheta + caidt*cr*cthetar + chbar*cr*cw))/(cdelta + cnc + cnh - cb*cnh*cw) == cctt;

eqn5 = cct / cctt == ceuler;

eqn6 = calpha * ckt^(calpha - 1) == cr;

eqn7 = (1 - calpha) * ckt^calpha == cw;

sol = solve([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7], [cs, ce, cct, cctt, ceuler, cr, cw]);

csSol = sol.cs
ceSol = sol.ce
cctSol = sol.cct
ccttSol = sol.cctt
ceulerSol = sol.ceuler
crSol = sol.cr
cwSol = sol.cw