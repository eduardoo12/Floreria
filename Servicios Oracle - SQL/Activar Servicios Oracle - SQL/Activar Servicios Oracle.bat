@echo off
title iniciando Servicios oracle

echo 1 de 5
net start OracleJobSchedulerXE 

echo 2 de 5
net start OracleMTSRecoveryService 

echo 3 de 5
net start OracleServiceXE 

echo 4 de 5
net start OracleXEClrAgent 

echo 5 de 5
net start OracleXETNSListener 
:SALIR