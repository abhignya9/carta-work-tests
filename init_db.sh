#!/bin/bash
set -eux

THISDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Demo PostgreSQL Database initialisation
psql postgres -c "CREATE USER carta PASSWORD 'password'"

#The -O flag below sets the user: createdb -O DBUSER DBNAME
createdb -O carta carta