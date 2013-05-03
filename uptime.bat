@rem net statistics workstation | find /i  "statistics since"
@echo off

@CALL :set_date_var
@rem CALL :print_year_month_day
@CALL :format_month_day
@rem CALL :print_year_month_day
@CALL :set_date
@CALL :find_start_string_from_event
@pause
@GOTO :eof

:find_start_string_from_event
@set _find_start_string="cscript C:\WINDOWS\system32\eventquery.vbs /fi "id eq 6009" /l system | find "%_date%""
@rem echo %_find_start_string%
@for /f "tokens=3,4 delims= " %%a in ('%_find_start_string%') do @echo %%a %%b
@GOTO :eof

:set_date_var
@echo off
@for /f "tokens=1,2,3 delims=- " %%a in ('date /t') do (
  set _year=%%a
	set _month=%%b
	set _day=%%c
)
@echo on
@GOTO :eof

:set_date
@echo off
@set _date=%_year%-%_month%-%_day%
@echo on
@GOTO :eof

:print_year_month_day
@echo off
@echo  %_year% %_month% %_day%
@echo on
@GOTO :eof

:format_month_day
@echo off

set _first= %_month:~0,1%
if %_first% == 0 (
	set _month=%_month:~1,1%
)

@rem process _day

set _first= %_day:~0,1%
if %_first% == 0 (
	set _day=%_day:~1,1%
)

@echo on
@GOTO :eof
