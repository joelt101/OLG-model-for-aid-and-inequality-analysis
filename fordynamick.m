syms cdelta cthetar caidt ctheta caidtt cn cnc cnh cnc ce cct cs cctt cb ceuler ckt calpha calphar cktt

eqn1 = (caidt*calpha*cdelta*ckt^calpha*cthetar - caidtt*ckt*cn*cnc*ctheta - caidtt*ckt*cn*cnh*ctheta + calpha*calphar*cb*cdelta*ckt^(2*calpha))/(calpha*cdelta*ckt^calpha + calpha*ckt^calpha*cnc + calpha*ckt^calpha*cnh) == cs;

eqn2 = (caidt*calpha*ckt^calpha*cnh*cthetar + caidtt*ckt*cn*cnh*ctheta)/(calpha*cdelta*ckt^calpha + calpha*ckt^calpha*cnc + calpha*ckt^calpha*cnh - calpha*calphar*cb*ckt^(2*calpha)*cnh) == ce;

eqn3 = cs / (cn * cb * ce) == cktt;

sol = solve([eqn1, eqn2, eqn3], [cs, ce, cktt]);

csSol = sol.cs
ceSol = sol.ce
ckttSol = sol.cktt
