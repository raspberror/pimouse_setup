install:
	cp setup.bash /etc/init.d/raspimouse
	chmod +x /etc/init.d/raspimouse
	update-rc.d raspimouse defaults

uninstall:
	update-rc.d raspimouse remove
	rm /etc/init.d/raspimouse
