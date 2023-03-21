install:## 	$(PACKAGE_MANAGER) install
## install:	We use yarn by default
## Try:
##     PACKAGE_MANAGER=npm MAN_COMMAND=install make report
##     PACKAGE_MANAGER=npm MAN_COMMAND=install make install
	@$(PACKAGE_MANAGER) install
lint:## 	eslint --ext .ts,.tsx .
	@$(PACKAGE_MANAGER) run lint
electron-forge-make:## 	electron-forge make
	@$(PACKAGE_MANAGER) run make
electron-forge-package:## 	electron-forge package
	@$(PACKAGE_MANAGER) run package
electron-forge-publish:## 	electron-forge publish
	@$(PACKAGE_MANAGER) run publish
electron-forge-start:## 	electron-forge start
	@$(PACKAGE_MANAGER) run start
electron-forge-cli:## 	yarn add --dev @electron-forge/cli
	@yarn add --dev @electron-forge/cli
electron-forge-import:## 	yarn electron-forge import
	@yarn electron-forge import
electron-app-wp:## 	template-webpack
	@yarn create electron-app $(GIT_BRANCH)-wp --template=webpack
electron-app-wp-ts:## 	template-webpack-typescript
	@yarn create electron-app $(GIT_BRANCH)-wp-ts --template=webpack-typescript
# vim: set noexpandtab:
# vim: set setfiletype make
