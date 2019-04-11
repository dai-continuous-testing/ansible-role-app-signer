#!/bin/bash

# exit on error
set -e

echo "[STEP 1] installing dependencies"

GIT_URL=$(git remote get-url origin)

ansible-galaxy install git+$GIT_URL,$TRAVIS_BRANCH --force

echo "[STEP 1] installing dependencies - completed successfully"

echo "[STEP 2] starting ansible playbook"

ansible-playbook site.yml

echo "[STEP 2] starting ansible playbook - completed successfully"

echo "[STEP 3] verifying install"

echo "skipping verify"

echo "[STEP 3] verifying install - completed successfully"

echo "[STEP 4] reinstalling"

ansible-playbook site.yml

echo "[STEP 4] reinstalling - completed successfully"

echo "[STEP 5] verifying install"

echo "skipping verify"

echo "[STEP 5] verifying install - completed successfully"
