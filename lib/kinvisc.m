function nargout = kinvisc(thermoSystem, t, p)
% Calculates the kinematic viscosity for a given thermodyanmic system
% If temperature or pressure are specified - a TP flash is done.
% The output is total molar kinematic viscosity, gas molar helmholtzenergy, liquid molar helmholtzenergy
% and the number of phases.
%
% Even Solbraa, 2001.
%
 if(nargin>=3)
     thermoSystem.setPressure(p);
 end
 if(nargin>=2)
     thermoSystem.setTemperature(t);
     TPflash(thermoSystem, 0);
 end
 thermoSystem.init(2);
 thermoSystem.initPhysicalProperties;
 nargout(1) = thermoSystem.getKinematicViscosity;
 if(thermoSystem.getNumberOfPhases==1)
     if(thermoSystem.getPhase(0).getPhaseType==1)
         nargout(2) = thermoSystem.getPhase(0).getPhysicalProperties.getKinematicViscosity;
         nargout(3) = 0;
     else
        nargout(3) = thermoSystem.getPhase(0).getPhysicalProperties.getKinematicViscosity;
        nargout(2) = 0;
    end
else
    nargout(2) = thermoSystem.getPhase(0).getPhysicalProperties.getKinematicViscosity;
    nargout(3) = thermoSystem.getPhase(1).getPhysicalProperties.getKinematicViscosity;
end
nargout(4)=thermoSystem.getNumberOfPhases;