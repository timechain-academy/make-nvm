install:## 	$(PACKAGE_MANAGER) install
## install:	We use yarn by default
## Try:
##     PACKAGE_MANAGER=npm MAN_COMMAND=install make report
##     PACKAGE_MANAGER=npm MAN_COMMAND=install make install
	@$(PACKAGE_MANAGER) install
lint:## 	eslint --ext .ts,.tsx .
	@$(PACKAGE_MANAGER) run lint
make:electron-forge-make## 	electron-forge-make
electron-forge-make:## 	electron-forge make
	@rm -rf out/make-nvm-darwin-x64
	@$(PACKAGE_MANAGER) run make
package:electron-forge-package## 	electron-forge-package
electron-forge-package:## 	electron-forge package
	@$(PACKAGE_MANAGER) run package
publish:electron-forge-publish## 	electron-forge-publish
electron-forge-publish:## 	electron-forge publish
	@$(PACKAGE_MANAGER) run publish
start:electron-forge-publish## 	electron-forge-start
electron-forge-start:## 	electron-forge start
	@$(PACKAGE_MANAGER) run start
cli:electron-forge-cli## 	electron-forge-cli
electron-forge-cli:## 	yarn add --dev @electron-forge/cli
	@yarn add --dev @electron-forge/cli
import:electron-forge-import## 	electron-forge-import
electron-forge-import:## 	yarn electron-forge import
	@yarn electron-forge import
app-wp:electron-app-wp## 	electron-app-wp
electron-app-wp:## 	template-webpack
	@yarn create electron-app ./src/$(GIT_BRANCH)-wp --template=webpack
app-wp-ts:electron-app-wp-ts## 	electron-app-wp-ts
electron-app-wp-ts:## 	template-webpack-typescript
	@yarn create electron-app ./src/$(GIT_BRANCH)-wp-ts --template=webpack-typescript
# vim: set noexpandtab:
# vim: set setfiletype make
