
syms cnc ca cw cthetar caidt cs ce cdelta cr ctheta caidtt cn cnh cphi cc cctt ceuler cktt cb calpha ckt
 
eqn1 = (caidt*cdelta*cr*cthetar + ca*cdelta*cr*cw - caidtt*cn*cnc*ctheta - caidtt*cn*cnh*cphi*ctheta)/(cb*cn*cnh*cphi*(caidtt*cn*ctheta + caidt*cr*cthetar + ca*cr*cw)) == cktt;

eqn2 = (1 - calpha) * ckt^(calpha) == cw;

eqn3 = calpha * ckt^(calpha - 1) == cr;

eqn4 = (cnh*cphi*(caidtt*cn*ctheta + caidt*cr*cthetar + ca*cr*cw))/(cr*(cdelta + cnc + cnh*cphi)) == ce;

eqn5 = cb * ce == ca;

sol = solve([eqn1, eqn2, eqn3, eqn4, eqn5], [cktt, cw, cr, cw, ca]);

ckttSol = sol.cktt
cwSol = sol.cw
crSol = sol.cr
ceSol = sol.ce
caSol = sol.ca