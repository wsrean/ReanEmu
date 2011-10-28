@echo ##########################################################
@echo ##                                                      ##
@echo ##     ReanEmu - Archivo de unificacion de SQL's        ##
@echo ##                                                      ##
@echo ##########################################################
@echo By Eilo and Hispano, thnx to Jeutie
@echo .
@echo .
@echo .
@echo Las siguientes lineas unirán todos los archivos sql que
@echo esten dentro de la carpeta sql/update de manera que ahora
@echo puedan importar todas las actualizaciones de la carpeta
@echo con tan solo un archivo en vez de una por una.
@echo .
@echo .
@echo .
@echo El proceso empezara AHORA!
@echo off
pause
@echo off
setlocal EnableDelayedExpansion
set WorldUpdates=All_World_Updates.sql
set CharactersUpdates=All_Characters_Updates.sql
set AuthUpdates=All_Auth_Updates.sql

if exist %CharactersUpdates% del %CharactersUpdates%
if exist %AuthUpdates% del %AuthUpdates%
if exist %WorldUpdates% del %WorldUpdates%

for %%a in (updates\world\*.sql) do (
echo /* >>%WorldUpdates%
echo * %%a >>%WorldUpdates%
echo */ >>%WorldUpdates%
copy/b %WorldUpdates%+"%%a" %WorldUpdates%
echo. >>%WorldUpdates%
echo. >>%WorldUpdates%)


for %%a in (updates\characters\*.sql) do (
echo /* >>%CharactersUpdates%
echo * %%a >>%CharactersUpdates%
echo */ >>%CharactersUpdates%
copy/b %CharactersUpdates%+"%%a" %CharactersUpdates%
echo. >>%CharactersUpdates%
echo. >>%CharactersUpdates%)


for %%a in (updates\auth\*.sql) do (
echo /* >>%AuthUpdates%
echo * %%a >>%AuthUpdates%
echo */ >>%AuthUpdates%
copy/b %AuthUpdates%+"%%a" %AuthUpdates%
echo. >>%AuthUpdates%
echo. >>%AuthUpdates%)  

@echo ReanEmu
pause
