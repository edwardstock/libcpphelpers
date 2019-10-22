#!/usr/bin/env bash
set -e

conan create . scatter/latest
conan export-pkg . toolboxpp/2.2.2@scatter/latest -f
conan upload toolboxpp/2.2.2@scatter/latest --all -r=scatter