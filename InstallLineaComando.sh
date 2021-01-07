echo "Actualizamos los cambios en GIT"
git add InstallLibs.sh
git add InstallLineaComando.sh
git add InstallPassword.txt
git add InstallSpectrum10.3v2.yml
git add InstallSpectrum.v10.4.yml

git commit -m "Codificación de los programas"


echo "Ejecutar la instalación de Spectrum 10.4 mediante el PlayBook"
ansible-playbook InstallSpectrum.v10.4.yml -vvv --extra-vars "hostname_name=localhost.localdomain hostname__pretty=localhost redhat_user=jzavala74mz redhat_pass=V4l3r1a20 host_user=jzavala74mz host_pass=P4ssw0rd host_name=192.168.112.133  and flag_suscribir=NO"
echo "Instalación de spectrum 10.4 fionalizada. Verifique los resultados"

git push
echo "La información se actualizó satisfactoriamente en el repositorio"

