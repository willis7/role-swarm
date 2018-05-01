
install:
		@bundle install

test:
		@kitchen test

clean:
	rm -rf $(deadwood)
	echo "Clean complete"

deadwood := \
	.kitchen/ \

.SILENT: clean
.PHONY: install test clean