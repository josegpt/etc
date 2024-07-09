PREFIX?=	${DESTDIR}/etc

install:
	install -d ${PREFIX}
	install -m 0600 relayd.conf ${PREFIX}
	install -m 0644 {acme-client,httpd}.conf ${PREFIX}

uninstall:
	rm -f ${PREFIX}/{httpd,acme-client,relayd}.conf

.PHONY: install uninstall
