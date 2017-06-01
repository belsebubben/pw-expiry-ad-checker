install:
	install -d -v -m 0755 ${HOME}/.config/systemd/user/
	install -v -m 0755 pw-expiry-ad-checker.service ${HOME}/.config/systemd/user/
	install -v -m 0755 pw-expiry-ad-checker.timer ${HOME}/.config/systemd/user/
	systemctl --user enable pw-expiry-ad-checker.service pw-expiry-ad-checker.timer
	systemctl --user start pw-expiry-ad-checker.timer pw-expiry-ad-checker.service

uninstall:
	systemctl --user stop pw-expiry-ad-checker.timer pw-expiry-ad-checker.service
	systemctl --user disable pw-expiry-ad-checker.service pw-expiry-ad-checker.timer
	rm -f ${HOME}/.config/systemd/user/pw-expiry-ad-checker.timer
	rm -f ${HOME}/.config/systemd/user/pw-expiry-ad-checker.service
