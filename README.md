# Build Bootstrap 3 on Windows #

1. Install NodeJS: 

	http://nodejs.org/download/

2. Open a command prompt, navigate to the bootstrap folder and issue the following to grab the necessary dependencies (Less, JSHint, Recess, and UglifyJS):

	npm install -g less jshint recess uglify-js

3. Copy make.bat to the bootstrap directory and run it from the command line:

	make.bat