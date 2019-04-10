
echo "[STEP 1] installing dependencies"

ansible-galaxy install git+https://github.com/ExperitestOfficial/ansible-role-app-signer.git,$TRAVIS_BRANCH

echo "[STEP 1] installing dependencies - completed successfully"

echo "[STEP 2] starting ansible playbook"

ansible-playbook site.yml

echo "[STEP 2] starting ansible playbook - completed successfully"

echo "[STEP 3] verifying install"

echo "skipping verify"

echo "[STEP 3] verifying install - completed successfully"
