syms cc ceh cee cs ct cw ctheta ca cnc cnh cne cbeta cr

eqn1 = (cbeta / (cnc + cbeta)) * ((1 - ct) * cw + ctheta * ca - ceh - cee) == cs;
 
eqn2 = (cnh / (cnh + cnc)) * ((1 - ct) * cw + ctheta * ca - cee - cs) == ceh;

eqn3 = (cne / (cne + cnc)) * ((1 - ct) * cw + ctheta * ca - ceh - cs) == cee;

eqn4 = (1 - ct) * cw + ctheta * ca - ceh - cee - cs == cc;

sol = solve([eqn1, eqn2, eqn3, eqn4], [cs, ceh, cee, cc]);

csSol = sol.cs
cehSol = sol.ceh
ceeSol = sol.cee
ccSol = sol.cc
