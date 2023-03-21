clean-out:
	@rm -rf ./out/make-nvm** || echo
	@rm ./forge.config.js || echo
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
	@rm -rf ./src/$(GIT_BRANCH)-wp || echo
	@yarn create electron-app ./src/$(GIT_BRANCH)-wp --template=webpack
app-wp-ts:electron-app-wp-ts## 	electron-app-wp-ts
electron-app-wp-ts:## 	template-webpack-typescript
	@rm -rf ./src/$(GIT_BRANCH)-wp-ts || echo
	@yarn create electron-app ./src/$(GIT_BRANCH)-wp-ts --template=webpack-typescript
recursive:clean-out
#NOTES: we remove forge.config.js
# to allow ./webpack to update
# correctly from ./src.
# WE then re-add the
# file to the repo to trick
# electron-forge to include
# the entire repo into the
# app bundle.
	#$(MAKE) make
	$(MAKE) package
	git checkout forge.config.js
	#$(MAKE) make
	$(MAKE) package

# vim: set noexpandtab:
# vim: set setfiletype make
