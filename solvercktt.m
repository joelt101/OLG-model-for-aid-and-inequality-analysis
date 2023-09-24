syms cktt cet cs calpha cdelta chbar ckt cdelta cnc cnh ctheta cthetar cn cb caidt caidtt caidttt cthetar

eqn1 = -(calpha^2*cdelta*chbar*ckt^(2*calpha) - calpha*cdelta*chbar*ckt^(2*calpha) - caidt*calpha*cdelta*ckt^calpha*cthetar + caidtt*ckt*cn*cnc*ctheta + caidtt*ckt*cn*cnh*ctheta - caidtt*cb*ckt*ckt^calpha*cn*cnh*ctheta + caidtt*calpha*cb*ckt*ckt^calpha*cn*cnh*ctheta)/(calpha*ckt^calpha*(cdelta + cnc + cnh - cb*ckt^calpha*cnh + calpha*cb*ckt^calpha*cnh)) == cs;

eqn2 = (calpha*chbar*cktt^(2*calpha)*cnh - calpha^2*chbar*cktt^(2*calpha)*cnh + caidtt*calpha*cktt^calpha*cnh*cthetar + caidttt*cktt*cn*cnh*ctheta)/(calpha*cktt^calpha*(cdelta + cnc + cnh - cb*cktt^calpha*cnh + calpha*cb*cktt^calpha*cnh)) == cet;

eqn3 = cs / (cn * (cb * cet + chbar)) == cktt;

sol = solve([eqn1, eqn2, eqn3], [cs, cet, cktt]);

csSol = sol.cs
cetSol = sol.cet
ckttSol = sol.ktt


