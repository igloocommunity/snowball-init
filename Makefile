
all:

install:
	# install the traditional-style init script to init.d/
	install -d ${DESTDIR}/etc/init.d
	install -m 0775 snowball ${DESTDIR}/etc/init.d/snowball
	
	# install the upstart-style task to init/
	install -d ${DESTDIR}/etc/init
	install -m 0664 snowball.conf ${DESTDIR}/etc/init/snowball.conf

	# install the systemd-style service to systemd/
	install -d ${DESTDIR}/etc/systemd/system
	install -m 0664 snowball.service ${DESTDIR}/etc/systemd/system/snowball.service
