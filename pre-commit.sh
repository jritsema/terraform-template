#!/bin/bash
set -ex
terraform fmt -check=true ./iac/base
terraform fmt -check=true ./iac/env/dev