//Variables Under Investigation
var cki ckp ch ce;

//List of Parameters
parameters cnc cnh cne cdelta cbeta calpha ctax ctheta cve cvh cvi csigma cr cmuh cmue cpsih cpsie ck1 ck2 ck3 ck4 ck5 ck6 cb cpsii ck7 cphi;

//Parameter Values
cnc = 4.3;
cnh = 6;
cne = 3;
cbeta = 0.35;
cdelta = 0.456;
calpha = 0.15;
ctax = 0.3;
ctheta = 0.5;
cve = 0.3;
cvh = 0.3;
cvi = 0.4;
csigma = 0;
cr = 0.05;
cmuh = 0.4;
cmue = 0.4;
cpsih = 0.4;
cpsie = 0.4;
ck1 = 0.3;
ck2 = 0.3;
ck3 = 0.4;
ck4 = 0.3;
ck5 = 0.3;
ck6 = 0.4;
cb = 1;
cpsii = 0.4;
ck7 = 1;
cphi = 0.5;
//cki = (psii * cvi * ctax * (1 - csigma - csigma * ctheta)) / ((cdelta / (cdelta + cnc + ck4 * cnc * ck1 * cnh)) * (1 + csigma - csigma * ctheta * ctax));

model;

//Public/Private Capital Ratio
cki = (cpsii * cvi * ctax * (1 - csigma - csigma * ctheta)) / ((cdelta / (cdelta + cnc + ck4 * cnc * ck1 * cnh)) * (1 + csigma - csigma * ctheta * ctax));

//Private Capital
ckp = ( (cdelta / (cdelta + cnc + ck4 * cnc * ck1 * cnh)) * cbeta^(1 + (cphi - 1) * (ck4 + ck5) - cphi * calpha * (ck1 + ck2)) * cb^((cphi -1) * ck4 - ck1 * cphi) * (cmuh * (cnh * ck1 / (cdelta + cnc + ck4 * cnc * ck1 * cnh)))^(-1 * ck1 * cphi) * ce^((1 - cphi) - (- cphi) * ck1 * cphi - ((1-cphi)^2) * (ck4 + ck6)) * ch^(cphi - cphi * (ck1 * cphi + ck3) - cphi * (1 - cphi) * ck4) * (cmue * (ck4 * cne / (cdelta + cnc + ck4 * cnc * ck1 * cnh)))^(ck4 * (cphi - 1)) )^(1 / (1 - (1 - cbeta) - cphi * (cbeta - 1) * (ck1 + ck2) - (cphi - 1) * (1 - cbeta) * (ck4 + ck5)));

//Health
ch = ((cmuh * (ck1 * cnh / (cdelta + cnc + ck4 * cnc * ck1 * cnh)) * (1 - ctax + csigma * ctheta * ctax) * cb * ce^(1 - cphi))^(ck1) * cki^(calpha * (ck1 + ck2)) * ckp^((1 - cbeta) * (ck1 + ck2)) * cbeta^(ck1 + ck2) )^(1 / (1 - ck1 * cphi - ck3));

//Education
ce = ((cmue * (ck4 * cne / (cdelta + cnc + ck4 * cnc * ck1 * cnh)) * (1 - ctax + csigma * ctheta * ctax) * cb * ch^(cphi))^(ck4) * cki^(calpha * (ck4 + ck5)) * ckp^((1 - cbeta) * (ck4 + ck5)) * cbeta^(ck4 + ck5) )^(1 / (1 -(1-cphi) * ck4 + ck6));

//Productivity


end;


steady;