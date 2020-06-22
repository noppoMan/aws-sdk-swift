#!/bin/bash
##===----------------------------------------------------------------------===##
##
## This source file is part of the AWSSDKSwift open source project
##
## Copyright (c) 2020 the AWSSDKSwift project authors
## Licensed under Apache License v2.0
##
## See LICENSE.txt for license information
## See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
##
## SPDX-License-Identifier: Apache-2.0
##
##===----------------------------------------------------------------------===##

# This is run assuming build-json-doc.sh has already been run
set -eux

create_jazzy_yaml() {
    ./scripts/create-jazzy-yaml.swift
}

run_jazzy() {
# use theme apple-thin-nav else docs are 50+ GB!
    jazzy --clean --theme scripts/jazzy/themes/apple-thin-nav/
}

tidy_up() {
    rm -rf sourcekitten
    rm -rf docs/docsets
    rm .jazzy.yaml
}

create_jazzy_yaml
run_jazzy
tidy_up
