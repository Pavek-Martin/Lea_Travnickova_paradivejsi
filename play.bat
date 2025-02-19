@echo off

set filename="video.mp4"
set a=00:00:18.800
set b=00:00:20.100

echo zvol rychlost prehravani
echo "0 = 100 procent"
echo "1 = 150 procent"
echo "2 = 200 procent"
echo "3 = 250 procent"
echo "4 = 300 procent"

REM echo "cokoliv jineho pro ukonceni programu"
set /p volba="zadej rychost 0 - 4 a nebo Enter = konec ?:

REM EQU - equal
REM NEQ - not equal
REM LSS - less than
REM LEQ - less than or equal
REM GTR - greater than
REM GEQ - greater than or equal

if %volba% LSS 0 (
REM volba < 0 napr -1, -2 atd.
echo chyba
sleep 2
goto konec
)

if %volba% GTR 4 (
REM volba > 3 a nebo napr. "abcd" apod. proste ne cislo
echo chyba 2
sleep 2
goto konec
)

REM nejni ostereny proti napr. volba=1.2 apod.


if %volba%==0 (set s=1)
if %volba%==1 (set s=1.5)
if %volba%==2 (set s=2)
if %volba%==3 (set s=2.5)
if %volba%==4 (set s=3)

echo filename - %filename%

echo --speed=%s%

echo --ss=%a%
echo --ab-loop-a=%a%
echo --ab-loop-b=%b%

sleep 2

mpv --mute --speed=%s% --ss=%a% --loop --ab-loop-a=%a% --ab-loop-b=%b% %filename%

:konec
@echo on

