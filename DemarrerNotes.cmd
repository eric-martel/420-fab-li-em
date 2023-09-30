@echo off

:: Script de démarrage automatique des notes de cours TiddlyWiki.
:: Pour que ce script fonctionne, il doit être situé dans le dossier
:: des notes de cours, et Git pour Windows doit être installé.

:: Redémarre minimisé (donc on ne devrait voir que très brièvement la fenêtre MS-DOS)
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

:: Met à jour le dépôt Git (nécessite que «Git for Windows» soit installé: https://gitforwindows.org/)
echo git checkout .
git checkout .

echo git pull
git pull

echo Ouvre notes
:: Démarre les notes de cours avec le fureteur par défaut
for %%I in (*.html) do start %%~nxI

exit
