install:## 	$(PACKAGE_MANAGER) install
## install:	We use yarn by default
## Try:
##     PACKAGE_MANAGER=npm MAN_COMMAND=install make report
##     PACKAGE_MANAGER=npm MAN_COMMAND=install make install
	@$(PACKAGE_MANAGER) install
lint:## 	eslint --ext .ts,.tsx .
	@$(PACKAGE_MANAGER) run lint
make:## 	electron-forge make
	@$(PACKAGE_MANAGER) run make
package:## 	electron-forge package
	@$(PACKAGE_MANAGER) run package
publish:## 	electron-forge publish
	@$(PACKAGE_MANAGER) run publish
start:## 	electron-forge start
	@$(PACKAGE_MANAGER) run start
electron-forge-cli:## 	yarn add --dev @electron-forge/cli
	@yarn add --dev @electron-forge/cli
electron-forge-import:## 	yarn electron-forge import
	@yarn electron-forge import
# vim: set noexpandtab:
# vim: set setfiletype make
