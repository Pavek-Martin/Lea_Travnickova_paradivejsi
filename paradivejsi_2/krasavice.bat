@echo off

set url="https://www.youtube.com/watch?v=O7HaXsxM3NQ"
set yt="C:\Program Files\yt\yt-dlp.exe"
%yt% --no-colors -c -nc -f best[ext=mp4] -o "in.mp4" %url%

set ff="C:\Program Files\qwinff-portable\tools\ffmpeg.exe"
%ff% -i "in.mp4" -ss 00:05:52.000 -t 00:03:29.000 -c copy "krasavice.mp4" -y

%ff% -i "krasavice.mp4" -ss 00:01:42.500 -t 00:00:10.000 -c copy "nejkrasnejsi".mp4 -y
%ff% -i "nejkrasnejsi.mp4" -vol 0 -vcodec copy "nejkrasnejsi_mute.mp4" -y

set mpvpl="C:\Program Files (x86)\mpv-x86_64\mpv.com"
set spomalene="0.33"
set osd="1"
set osdf="50"
set sodc="#D90000"
set osdm="3x spomalene !"
set filename="nejkrasnejsi_mute.mp4"

REM  --osd-playing-msg-duration      Integer (0 to 3600000) (default: 0) - toto je z manualu
REM set du="0" & REM zobrazuje velmi kratce ( 0 = default )
REM set du="3600" & REM zobrazuje cca. 3 vteriny
REM set du="7200" & REM cca. 4 vteriny
set du="3600000" & REM bude zobrazovat stale ( maximalni hodnota )

%mpvpl% --fullscreen=yes --loop --speed=%spomalene% --osd-level=%osd% --osd-font-size=%osdf% --osd-color=%sodc% --osd-playing-msg=%osdm% --osd-playing-msg-duration=%du% %filename%
pause

