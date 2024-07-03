PREFIX?=	${DESTDIR}/etc

all: install

install:
	mkdir -p ${PREFIX}
	cp -fp *.conf ${PREFIX}

uninstall:
	rm -f ${PREFIX}/{httpd,acme-client,relayd}.conf

.PHONY: all install uninstall
