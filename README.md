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
 * Template.pm (libtemplate-perl in Debian/Ubuntu)

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

`./pglogcheck *.log > db.html`

stat_statements
===============

`stat_statements` dumps the contents of `pg_stat_statements` as a html report.
Sorting can be altered by clicking on the column titles.

Usage
-----
`./stat_statements [conninfo_string] > statements.html`
