PREFIX?=	${DESTDIR}/etc

all: install

install:
	install -d ${PREFIX}
	install -m 0600 relayd.conf ${PREFIX}
	install -m 0644 httpd.conf ${PREFIX}
	install -m 0644 acme-client.conf ${PREFIX}

uninstall:
	rm -f ${PREFIX}/{httpd,acme-client,relayd}.conf

.PHONY: install uninstall
