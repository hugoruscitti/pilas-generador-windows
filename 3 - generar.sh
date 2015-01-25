cd python-pilas-experimental
echo "Actualizando repositorio..."
git pull


echo "Borrando directorios temporales"
cd ..
rm -r -f build dist

echo "Generando binario"
python extras/pyinstaller-pyinstaller-953f6e3/pyinstaller.py python-pilas-experimental/extras/cargador_para_windows/pilas-engine.py --icon=python-pilas-experimental/data/icono.ico --windowed --onefile

#--windowed --onefile
#-c

#python extras/pyinstaller-pyinstaller-953f6e3/pyinstaller.py pilas-engine.py --icon=python-pilas-experimental/data/icono.ico --onefile --windowed

echo "Copiando pilas-engine en el cargador..."
cp -r python-pilas-experimental/pilasengine dist/
cp -r python-pilas-experimental/data dist/
cp -r python-pilas-experimental/extras/instalador.nsi dist/
cp -r extras/library.zip dist/


echo ""
echo "¡Listo!"
explorer dist
read
