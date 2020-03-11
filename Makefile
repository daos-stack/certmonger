NAME    := certmonger
SRC_EXT := gz
SOURCE  = https://releases.pagure.org/$(NAME)/$(NAME)-$(VERSION).tar.$(SRC_EXT)
PATCHES = https://releases.pagure.org/$(NAME)/$(NAME)-$(VERSION).tar.$(SRC_EXT).sig
PATCHES += 0006-NSS-crypto-policy-sets-minimum-RSA-and-DSA-key-size-.patch

include packaging/Makefile_packaging.mk

$(NAME)-$(DL_VERSION).tar.$(SRC_EXT).sig:
	rm -f ./$(NAME)-*.tar.{gz,bz*,xz}.sig
	curl -f -L -O '$(SOURCE).sig'
