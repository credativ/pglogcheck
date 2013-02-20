pglogcheck - PostgreSQL Log Analyzer
====================================

pglogcheck is a PostgreSQL log analyzer, similar to pgfouine and pgbadger.

It tries hard not to depend on the log format used, so there is no need to
configure the one-and-only log\_prefix string. It also supports different log
languages. (Currently English and German, others are possible to add without
too much pain.)

Prerequisites
-------------

 * Perl
 * Template.pm (libtemplate-perl)

Installation
------------

Source code is available on github: https://github.com/credativ/pglogcheck

To install, simply copy "pglogcheck" and "pglogcheck.template" to some
directory (or run from the git checkout). The HTML file generated will
optionally need the "sorttable.js" file. (If it is missing, interactive table
sorting will not work.)

Usage
-----

Simply invoke it on one or more logfiles:

./pglogcheck *.log > db.html
