
install:
		@bundle install

test:
		@kitchen test

clean:
	rm -rf $(deadwood)
	echo "Clean complete"

inspec:
	@inspec supermarket exec dev-sec/cis-docker-benchmark \
	-t "ssh://vagrant@127.0.0.1:2222" \
	-i .kitchen/kitchen-vagrant/default-centos-74/.vagrant/machines/default/virtualbox/private_key \
	--sudo

deadwood := \
	.kitchen/ \

.SILENT: clean
.PHONY: install test clean
