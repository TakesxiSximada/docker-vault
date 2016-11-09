CONFIG=$(CURDIR)/default.hcl
PORT_PAIR=8200:8200

.PHONY: up
up:
	echo "OK"


.PHONY: debug
debug:
	@## make debug [cmd=/bin/sh]
	@#
	@# cmd: 起動してログインしたい場合に実行するコマンドを指定する (default: "")
	docker run -it -v $(CONFIG):/vault/config/default.hcl -p $(PORT_PAIR) vault $(cmd)
