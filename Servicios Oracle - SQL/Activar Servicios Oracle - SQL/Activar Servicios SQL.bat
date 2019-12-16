@echo off
title Iniciando Servicios SQL

echo 1 de 8
net start MSSQLFDLauncher

echo 2 de 8
net start MSSQLSERVER

echo 3 de 8
net start SQLSERVERAGENT

echo 4 de 8
net start MSSQLServerOLAPService

echo 5 de 8
net start SQLBrowser

echo 6 de 8
net start MsDtsServer110

echo 7 de 8
net start ReportServer

echo 8 de 8
net start SQLWriter