syms cnc ca cw cthetar caidt cs ce cdelta cr ctheta caidtt cn cnh cphi cc cctt ceuler cktt cb

eqn1 = -1 * cnc / (ca * cw + cthetar * caidt - cs - ce) + (cdelta * cr) / (cr * cs + ctheta * caidtt * cn) == 0;

eqn2 = -1 * cnc / (ca * cw + cthetar * caidt - cs - ce) + (cnh) / ce == 0;

eqn3 = ca * cw + (cthetar) * caidt  - ce - cs == cc;

eqn4 = (cr) * cs + ctheta * caidtt * cn == cctt;

eqn5 = cc / cctt == ceuler;

sol = solve([eqn1, eqn2, eqn3, eqn4, eqn5], [cs, ce, cc, cctt, ceuler]);

csSol = sol.cs
ceSol = sol.ce
ccSol = sol.cc
ccttSol = sol.cctt
ceulerSol = sol.ceuler

