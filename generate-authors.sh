#!/bin/bash
set -e

{
	cat <<-'EOH'
	# File @generated by generate-authors.sh. DO NOT EDIT.
	# This file lists all contributors to the repository.
	# See generate-authors.sh to make modifications.
	#
	# Inspired by Docker https://github.com/moby/moby/blob/master/AUTHORS
	# See https://github.com/moby/moby/blob/master/hack/generate-authors.sh
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS
