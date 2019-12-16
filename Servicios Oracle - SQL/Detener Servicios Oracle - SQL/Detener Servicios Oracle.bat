@echo off
title Deteniendo servicios de Oracle

echo 1 de 5
sc config OracleJobSchedulerXE  start= demand
net stop OracleJobSchedulerXE 

echo 2 de 5
sc config OracleMTSRecoveryService start= demand
net stop OracleMTSRecoveryService

echo 3 de 5
sc config OracleServiceXE start= demand
net stop OracleServiceXE

echo 4 de 5
sc config OracleXEClrAgent start= demand
net stop OracleXEClrAgent

echo 5 de 5
sc config OracleXETNSListener start= demand
net stop OracleXETNSListener

:salir