syms cdelta cr cthetar caidt cw ctheta caidtt cn cnc cnh cnc ce cct cs cctt cb ceuler

eqn1 = (cdelta * cr * (cthetar * caidt + cb * cw) - ctheta * caidtt * cn * (cnc + cnh)) / (cr * (cdelta + cnc + cnh)) == cs;

eqn2 = (cnh / (cr * (cdelta + cnc + cnh))) * (ctheta * caidtt * cn + cr *(cthetar * caidt + cb * ce * cw)) == ce;

eqn3 = (cnc / (cr * (cdelta + cnc + cnh))) * (ctheta * caidtt * cn + cr *(cthetar * caidt + cb * ce * cw)) == cct;

eqn4 = (cdelta / ((cdelta + cnc + cnh))) * (ctheta * caidtt * cn + cr *(cthetar * caidt + cb * ce * cw)) == cctt;

eqn5 = cct / cctt == ceuler;

sol = solve([eqn1, eqn2, eqn3, eqn4, eqn5], [cs, ce, cct, cctt, ceuler]);

csSol = sol.cs
ceSol = sol.ce
cctSol = sol.cct
ccttSol = sol.cctt
ceulerSol = sol.ceuler

