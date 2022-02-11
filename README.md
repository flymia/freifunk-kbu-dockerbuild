# freifunk-kbu-dockerbuild

Dieses Docker Image soll beim Bauen von Freifunk Gluon Images helfen. Hauptsächlich wurde es für die KBU-Community konzipiert, es sollte aber auch für alle andere Communities funktionieren.

# Bauen

Erst das Git-Repository klonen:

`git clone https://github.com/flymia/freifunk-kbu-dockerbuild.git`

Danach das Image bauen:

`docker build -t "kbu-dockerbuild:Dockerfile" .`

Und einen Container mit dem Image starten:

`sudo docker run --name kbu-dockerbuild -it kbu-dockerbuild:Dockerfile /bin/bash -l`

Ab dann kann der sehr guten [Glun-Dokumentation](https://gluon.readthedocs.io/en/latest/user/getting_started.html) gefolgt werden.