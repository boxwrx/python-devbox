# Google Cloud Shell Software Installation
#   - CS always provides x86_64 Debian Linux environment
#   - Software installation is not preserved, only the file system. This script must be run on every boot.
#   - CS has no mechanism to launch a script automatically, manual interventions is required.
#

# Create dependencies and prepare for the download

pwd=$(pwd)

echo "Initializing setup..." | tee ${pwd}/scripts/setup.log
mkdir -p ~/Downloads ~/.cloudshell
touch ~/.cloudshell/no-apt-get-warning  # Suppress the CS ephemeral environment warning

# Add VS Code extensions (if they are not alreay there). This is installing from a persistent workspace, so
# the extensions are installed for the cloud shell and will persist across sessions.

echo "Installing Visual Studio Code extensions..." | tee -a ${pwd}/scripts/setup.log
if ! /google/devshell/editor/code-oss-for-cloud-shell/bin/remote-cli/codeoss --install-extension ms-python.python >> ${pwd}/scripts/setup.log 2>&1; then
    echo "Failed to install Visual Studio Code extension for Python." | tee -a ${pwd}/scripts/setup.log
    exit 1
fi

echo "Creating Python virtual environment..." | tee -a ${pwd}/scripts/setup.log
$(python3 -m venv .venv && .venv/bin/pip install --upgrade pip && .venv/bin/pip install -e .) | tee -a ${pwd}/scripts/setup.log

echo "Setup completed successfully." | tee -a ${pwd}/scripts/setup.log