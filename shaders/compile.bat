@echo off
for /r %%f in (*vert) do glslc %%f -o ../build/shaders/%%~nxf.spv
for /r %%f in (*frag) do glslc %%f -o ../build/shaders/%%~nxf.spv
pause