syms cnc ca cw cthetar caidt cs ce cdelta cr ctheta caidtt cn cnh cc cctt ceuler ckss cb calpha ckss cg chbar cet csss cess

% params
cb = 0.3;
chbar = 0.3;
cn = 1.1;
calpha = 0.3;
cnh = 2;
cnc = 4;
cdelta = 0.2;



eqn1 = csss * (1 / ((cb * cess + chbar) * cn)) == ckss;

eqn2 = (calpha * cnh * ckss^calpha * ((1 - calpha) * ckss^calpha * chbar)) / (calpha * ckss^calpha * (cdelta + cnc - cnh * ((1 - calpha) * ckss^calpha * cb - 1))) == cess;

eqn3 = (calpha * cdelta * ckss^calpha * ((1 - calpha) * ckss^calpha * chbar)) / (calpha * ckss^calpha * (cdelta + cnc - cnh * ((1 - calpha) * ckss^calpha * cb - 1))) == csss;

sol = solve([eqn1, eqn2, eqn3], [ckss, cess, csss]);

ckssSol = sol.ckss
cessSol = sol.cess
csssSol = sol.csss