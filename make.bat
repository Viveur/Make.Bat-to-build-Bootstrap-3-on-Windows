@ECHO OFF
ECHO.
ECHO 1. Ensure you have NodeJS installed (http://nodejs.org/download/)
ECHO.
ECHO 2. Open a command prompt and type the following to install the necessary dependencies (Less, JSHint, Recess, and UglifyJS):
ECHO.
ECHO npm install -g less jshint recess uglify-js
ECHO.
PAUSE

MKDIR bootstrap\css
MKDIR bootstrap\js
MKDIR bootstrap\fonts

COPY fonts\* bootstrap\fonts
 
CALL lessc less\bootstrap.less > bootstrap\css\bootstrap.css
CALL lessc -x less\bootstrap.less > bootstrap\css\bootstrap.min.css

COPY /B ^
js\transition.js+ ^
js\alert.js+ ^
js\button.js+ ^
js\carousel.js+ ^
js\collapse.js+ ^
js\dropdown.js+ ^
js\modal.js+ ^
js\tooltip.js+ ^
js\popover.js+ ^
js\scrollspy.js+ ^
js\tab.js+ ^
js\affix.js bootstrap\js\bootstrap.js

CALL uglifyjs bootstrap\js\bootstrap.js > bootstrap\js\bootstrap.min.js

ECHO.
ECHO No errors above? Aww Yeah! We're ready to rumble...
ECHO Compiled files are inside the bootstrap folder 