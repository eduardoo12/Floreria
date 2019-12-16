@echo off
title Deteniendo Servicios SQL

echo 1 de 8
sc config MSSQLFDLauncher start= demand
net stop MSSQLFDLauncher

echo 2 de 8
sc config SQLSERVERAGENT start= demand
net stop SQLSERVERAGENT

echo 3 de 8
sc config MSSQLServerOLAPService start= demand
net stop MSSQLServerOLAPService

echo 4 de 8
sc config SQLBrowser start= demand
net stop SQLBrowser

echo 5 de 8
sc config MsDtsServer110 start= demand
net stop MsDtsServer110

echo 6 de 8
sc config ReportServer start= demand
net stop ReportServer

echo 7 de 8
sc config SQLWriter start= demand
net stop SQLWriter

echo 8 de 8
sc config MSSQLSERVER start= demand
net stop MSSQLSERVER

:salir