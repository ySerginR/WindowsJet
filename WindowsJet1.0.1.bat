::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWGLUohhkcUEFGESyEVb6b5YO7env5uSA4mglcYI=
::fBE1pAF6MU+EWGLUohhkcUEFGESyEVb6b5MV5O317ueC+A0+Dt4Ka4rJyYijIfIQ70nrNaYoxWlblsMNMDRWeza5Zxkxlc2jpGGEd8OZ8zvzS0qI6kM/J1J9iWffmzgRZcc51JNNggWm+U7qi6oC9FbYEKwWEAM=
::fBE1pAF6MU+EWGLUohhkcUEFGESyEVb6b5MT+uX6+7DH8R9ddusrOJOb+buAM+8f7wWsQ58+33hWnYJs
::fBE1pAF6MU+EWGLUohhkcUEFGESyEVb6b5QY7OH16KqRp18OXe0xOIbV3LucLeEH40rqO9hjllVx+A==
::fBE1pAF6MU+EWGLUohhkcUEFG0SyEVb6b5QY7OH16KqVp14SQfA8fZyVlPrOD8tz
::fBE1pAF6MU+EWGLUohhkcUEFG0SyEVb6b4UO5+v+/PnHpEQTXfE3fYu7
::fBE1pAF6MU+EWGLUohhleEEEGESyEVb6b5YO7env5uSA4mglcYI=
::fBE1pAF6MU+EWGLUohhleEEEGESyEVb6b5MV5O317ueC+A0+Dt4Ka4rJyYijIfIQ70nrNaYoxWlblsMNMDRWeza5Zxkxlc2jpGGEd8OZ8zvzS0qI6kM/J1J9iWffmzgRZcc51JNNggWm+U7qi6oC9FbYcY5AEHvkoQ==
::fBE1pAF6MU+EWGLUohhleEEEGESyEVb6b5MT+uX6+7DH8R9ddusrOJOb+buAM+8f7wWsQ58+33hWnYJs
::fBE1pAF6MU+EWGLUohhleEEEGESyEVb6b5QY7OH16KqRp18OXe0xOIbV3LucLeEH40rqO9hjllVx+A==
::fBE1pAF6MU+EWGLUohhleEEEGkSyEVb6b5QY7OH16KqVp14SQfA8fZyVlPrOD8tz
::fBE1pAF6MU+EWGLUohhleEEEGkSyEVb6b4UO5+v+/PnHpEQTXfE3fYu7
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHWQ=
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbSubCqUU6Yg=
::ZQ05rAF9IAHYFVzEqQIHIRVQQxORFm6uZg==
::eg0/rx1wNQPfEVWB+kM9LVsJDDOLMm+1EaY27fyqobrJ82gFUeEqbIDJ/5qpQA==
::fBEirQZwNQPfEVWB+kM9LVsJDDOLMm+1EaY27fyb
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWGqB5kU5Jy1RVFPi
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEx0ciLxJbegGaaws=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDZVXgeHMGT6NrAP++n15+u7hkIKWu4weYvI5oOHLuQc/VbOcIJ8mCoUye4UCRhNah25XjsWm0Fl+GGdMqc=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Instalador de .NET Framework
setlocal EnableDelayedExpansion

rem Lista de versoes do .NET Framework
set frameworks=1.1 2.0 3.0 3.5 4.0 4.5 4.5.1 4.5.2 4.6 4.6.1 4.6.2 4.7 4.7.1 4.7.2 4.8

echo Selecione as versoes do .NET Framework para instalar:
set count=0

for %%f in (%frameworks%) do (
    set /a count+=1
    echo !count!. %%f
)

set /p "choices=Digite os numeros das versoes separadas por espaco (ex: 1 3 5): "

rem Converte as escolhas em uma lista de frameworks
set selectedFrameworks=
for %%c in (%choices%) do (
    for /f "tokens=1,*" %%i in ('echo %frameworks% ^| findstr /b /l /c:"%%c "') do (
        set selectedFrameworks=!selectedFrameworks!%%i
    )
)

rem URL de download dos instaladores .NET Framework
set url_1.1=http://download.microsoft.com/download/8/5/7/8575cba5-a6e6-4cbf-938a-217348432bc0/dotnetfx.exe
set url_2.0=https://download.microsoft.com/download/9/5/A/95A61238-4430-4266-B12C-29BE6BB8F413/dotnetfx.exe
set url_3.0=https://download.microsoft.com/download/2/0/e/20e90413-712a-41da-9b1f-fb3b94c230e0/dotnetfx3setup.exe
set url_3.5=https://download.microsoft.com/download/2/0/E/20E90413-712A-41DA-9B1F-FB3B94C230E0/dotnetfx35.exe
set url_4.0=https://download.microsoft.com/download/1/1/A/11A18B8D-BE6C-41B2-865E-0F60981D9A72/dotNetFx40_Full_x86_x64.exe
set url_4.5=https://download.microsoft.com/download/1/5/A/15A409B5-2422-4E8B-9106-77A95E5E42D6/dotnetfx45_full_x86_x64.exe
set url_4.5.1=https://download.microsoft.com/download/1/8/E/18E6FAD7-E1D0-49DB-AACF-6B5E2F07C8FA/NDP451-KB2858728-x86-x64-AllOS-ENU.exe
set url_4.5.2=https://download.microsoft.com/download/1/8/E/18E6FAD7-E1D0-49DB-AACF-6B5E2F07C8FA/NDP452-KB2901907-x86-x64-AllOS-ENU.exe
set url_4.6=https://download.microsoft.com/download/1/0/8/108A74FF-AC8B-4862-8E9B-32D01BF9F505/NDP46-KB3045560-Web.exe
set url_4.6.1=https://download.microsoft.com/download/0/2/A/02AFAF77-79F4-4B7A-9515-17D0A734F9FF/NDP461-KB3102436-Web.exe
set url_4.6.2=https://download.microsoft.com/download/F/C/0/FC0DA62B-FF1B-4A05-A5A9-13DA5F6D8588/NDP462-KB3151800-Web.exe
set url_4.7=https://download.microsoft.com/download/3/B/6/3B6C5EF8-CDF1-4F2B-8380-7B69F9227ED8/NDP47-KB3186497.exe
set url_4.7.1=https://download.microsoft.com/download/4/D/7/4D7916E9-BF01-4B8A-82C0-300A332DAF72/NDP471-KB4033342-Web.exe
set url_4.7.2=https://download.microsoft.com/download/6/F/A/6FAB1D4B-2433-485E-8D2E-DAB82A3B7F4C/NDP472-KB4054531-Web.exe
set url_4.8=https://download.microsoft.com/download/0/7/0/07071AA1-CA46-4E88-BA91-15C441C2BAA6/ndp48-web.exe

rem Baixa e instala as versoes selecionadas
for %%f in (%selectedFrameworks%) do (
    set url_var=url_%%f
    set url=!%url_var%!
    echo Baixando .NET Framework %%f...
    powershell -Command "Invoke-WebRequest -Uri !url! -OutFile %%f.exe"
    echo Instalando .NET Framework %%f...
    start /wait %%f.exe /quiet /norestart
    del %%f.exe
)

echo Instalacao concluida.
pause