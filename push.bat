@echo off
@git add .
@git add -u
@git commit -m %1
@git push upstream
