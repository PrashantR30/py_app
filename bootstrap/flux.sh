#!/bin/bash

# flux.sh
GITHUB_USER="PrashantR30"
GITHUB_REPO="py_app"
GITHUB_BRANCH="dev"

flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=$GITHUB_REPO \
  --branch=$GITHUB_BRANCH \
  --path=deploy \
  --personal
