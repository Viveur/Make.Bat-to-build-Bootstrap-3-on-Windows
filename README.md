Build Bootstrap 3 on Windows

Requires JSHint, Recess, and UglifyJS to be installed via Node.js's NPM.

## A) Install dependencies locally and build.

Run this command after node.js is installed:

	npm install less jshint recess uglify-js

Then run:

	make-local_npm.bat


## B) Alternatively, install dependencies globally (-g) and build.

Run this command after node.js is installed:

	npm install -g less jshint recess uglify-js

Then run:

	make-global_npm.bat