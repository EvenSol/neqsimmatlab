run 'G:\T&P\F&T\PRA\Gassprosessering\Dataverkt�y\neqsim\neqsim\toolbox\matlab\addpathNeqSim'
processOperations.clearAll

system = neqsim.thermo.system.readFluid(2022);
PTenvelope(system);