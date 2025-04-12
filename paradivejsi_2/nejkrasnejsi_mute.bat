@echo off

set mpvpl="C:\Program Files (x86)\mpv-x86_64\mpv.com"
set spomalene="0.33"
set osd="1"
set osdf="50"
REM set sodc="#FF7F27" & REM spatna barva
set sodc="#D90000" & REM vylepsene barvi
set osdm="to je jako ze sametu !"
set filename="nejkrasnejsi_mute.mp4"

REM  --osd-playing-msg-duration      Integer (0 to 3600000) (default: 0) - toto je z manualu
REM set du="0" & REM zobrazuje velmi kratce ( 0 = default )
REM set du="3600" & REM zobrazuje cca. 3 vteriny
REM set du="7200" & REM cca. 4 vteriny
set du="3600000" & REM bude zobrazovat stale ( maximalni hodnota )

%mpvpl% --fullscreen=yes --loop --speed=%spomalene% --osd-level=%osd% --osd-font-size=%osdf% --osd-color=%sodc% --osd-playing-msg=%osdm% --osd-playing-msg-duration=%du% %filename%
pause


