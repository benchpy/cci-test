objects = base.in test.in dev.in  # In order of dependency
outputs := $(objects:.in=.txt)

all: $(outputs)

%.txt: %.in
	pip-compile -v --output-file $@ $<

clean:
	- rm *.txt


# there may be a gotcha using pip-compile as django-allauth requires
# requests>2.0.0 and this only forces the  chain to install requests==2.1.0
# whereas we require 2.8.1 at least due to ssl concerns, need to check how to
# force override to later version upgrade; one of the libs  django-allauth,
# etcd, requests-oauthlib, responses, rester with request as dep. seems forcing
# old version, find and eliminiate
