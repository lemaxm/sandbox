#!/bin/bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

if [ -n "$bamboo_build_working_directory" ]; then
	# pre-checkout cleaning...
	echo "Cleaning bamboo_build_working_directory '$bamboo_build_working_directory'..."
	rm -rf "$bamboo_build_working_directory/*"
	# checkout ad branch handling...
	cd "$bamboo_build_working_directory"
	echo "Checking out '$bamboo_planRepository_branchName' with rev '$bamboo_planRepository_revision'"
	git clone $bamboo_planRepository_repositoryUrl .
	git checkout $bamboo_planRepository_branchName
	git checkout $bamboo_planRepository_revision
	cd -
else 
	(>&2 echo "The bamboo_build_working_directory variable was not found")
fi
