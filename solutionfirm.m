syms cnc ca cw cthetar caidt cs ce cdelta cr ctheta caidtt cn cnh cc cctt ceuler cktt cb calpha ckt c
 
eqn1 = (caidt*cdelta*cr*cthetar + ca*cdelta*cr*cw - caidtt*cn*cnc*ctheta - caidtt*cn*cnh*ctheta)/(cr*(cdelta + cnc + cnh)) == cs;

eqn2 = (cnh*(caidtt*cn*ctheta + caidt*cr*cthetar + ca*cr*cw))/(cr*(cdelta + cnc + cnh)) == ce;

eqn3 = (cnc*(caidtt*cn*ctheta + caidt*cr*cthetar + ca*cr*cw))/(cr*(cdelta + cnc + cnh)) ==cc;

eqn4 = (cdelta*(caidtt*cn*ctheta + caidt*cr*cthetar + ca*cr*cw))/(cdelta + cnc + cnh) ==cctt;

eqn5 = cnc/(cdelta*cr) == ceuler;

eqn6 = calpha * ckt^(calpha - 1) == cr;

eqn7 = (1 - calpha) * ckt^(calpha) == cw;

sol = solve([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7], [cs, ce, cc, cctt, ceuler, cr, cw]);

csSol = sol.cs
ceSol = sol.ce
ccSol = sol.cc
ccttSol = sol.cctt
ceulerSol = sol.ceuler
crSol = sol.cr
cwSol = sol.cw
