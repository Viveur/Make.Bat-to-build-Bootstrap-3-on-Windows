@ECHO OFF
REM
REM 01.17.2013, Requires Node.js, JSHint, Recess, and UglifyJS (installed in the path)
REM Run this command after node.js is installed
REM npm install less jshint recess uglify-js
REM
 
MKDIR bootstrap\css
MKDIR bootstrap\js
MKDIR bootstrap\fonts

COPY fonts\* bootstrap\fonts
 
CALL .\node_modules\.bin\lessc less\bootstrap.less > bootstrap\css\bootstrap.css
CALL .\node_modules\.bin\lessc -x less\bootstrap.less > bootstrap\css\bootstrap.min.css

COPY /B ^
js\bootstrap-affix.js+ ^
js\bootstrap-alert.js+ ^
js\bootstrap-button.js+ ^
js\bootstrap-carousel.js+ ^
js\bootstrap-collapse.js+ ^
js\bootstrap-dropdown.js+ ^
js\bootstrap-modal.js+ ^
js\bootstrap-popover.js+ ^
js\bootstrap-scrollspy.js+ ^
js\bootstrap-tab.js+ ^
js\bootstrap-tooltip.js+ ^
js\bootstrap-transition.js+ ^
js\bootstrap-typeahead.js bootstrap\js\bootstrap.js

CALL .\node_modules\.bin\uglifyjs bootstrap\js\bootstrap.js > bootstrap\js\bootstrap.min.js

echo No errors? Aww Yeah! We're ready to rumble...