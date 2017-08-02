set @curdatetime=%date:~10,4%%date:~4,2%%date:~7,2%
set @AppPath="C:\data for setup\pdi-ce-5.4.0.1-130\data-integration"
set @LogFile="C:\data for setup\pdi-ce-5.4.0.1-130\logfile\Process\fact_process_stock\fact_process_stock_%@curdatetime%.txt"
%@AppPath%\kitchen.bat /rep:etl_musashi /job:fact_process_stock /dir:Process /user:admin /pass:admin /level:Basic > %@LogFile%