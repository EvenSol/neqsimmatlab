tempClassPath = javaclasspath;
if isempty(tempClassPath)
    cellarraywithpaths=({'G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/NeqSimSource.jar', 'G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/mysql-connector-java-5.1.17-bin.jar', 'G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/jfreechart-0.9.20.jar', 'G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/Jama-1.0.2.jar','G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/jcommon-0.9.5.jar','G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/commons-math-2.2.jar','G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/neqsim/ext/lp.zip','G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/neqsim/ext/itext-1.02b.jar','G:/T&P/F&T/PRA/Gassprosessering/Dataverkt�y/neqsim/neqsim/ext/ejml-0.21.jar'}); %({});
    % Pablo 10/05/2012
    % including all jar files in \ext\, needed for Matlab R2011b
   rootpath = 'G:\T&P\F&T\PRA\Gassprosessering\Dataverkt�y\neqsim\neqsim\ext\';
   rootpath = 'C:\Program Files (x86)\NeqSim\NeqSimProgramFiles\neqsim\ext\';
   rootpath = pathToJavaJar;
    a=ls([rootpath '*.jar']);
    for i = 1:length(a)
        cellarraywithpaths{end+1}=[rootpath a(i,:)];
    end
    javaclasspath(cellarraywithpaths);
end

if ~exist('processOperations') % added Even 10/12/2011
    global processOperations
    processOperations = processSimulation.processSystem.ProcessSystem;
end % end added