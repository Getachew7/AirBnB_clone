#!/usr/bin/env bash

set -e

{
	cat <<- 'EOH'
		# This file lists all individuals having contriubuted content to this repository
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS
