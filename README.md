# simple_and_stupid_monitor
Yet another monitoring tool for linux (but simple &amp; stupid)

Vmstat based, no dependencies

collecting data  : 2 simple bash files
rendering graphs : 1 html + 1 library (dygraphs : js + css)

Security : No access control provided, so use it in a local environment or with a security layer in front
Install  :
 - put the files in a folder that can answer to http/XHR requests
 - chmod 700 *.sh
 - ./collectdata.sh
 - load index.html?YYYYMMDD in your browser
 
Source of dygraphs : http://dygraphs.com, https://github.com/danvk/dygraphs Copyright (c) 2009 Dan Vanderkam

Licence : MIT
