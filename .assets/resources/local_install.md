[//]: # "README.md"
[//]: # "Copyright © 2026 nTier Training. All rights reserved."
[//]: #

![Banner Light](../images/banner-python-vde-small-light.png#gh-light-mode-only)
![banner Dark](../images/banner-python-vde-small-dark.png#gh-dark-mode-only)

# Local Application Installation

This page covers installing Visual Studio Code and Docker on [Microsoft Windows](#microsoft-windows), [Apple macOS](#apple-macos), and [Linux](#linux).

## Microsoft Windows

1. Install <code>Visual Studio Code</code>

    ```
    winget install -e --id Microsoft.VisualStudioCode
    ```

1. In VS Code, install the extensions:

    ```
    code --install-extension ms-vscode.cpptools
    ```

1. Install WSL2 (Lighter-weight, Linux optimized instead of the heavy Hyper-V, and requires a reboot):

    ```
    wsl --install
    ```

1. Install Docker Desktop:

    ```
    winget install -e --id Docker.DockerDesktop
    ```

1. Launch Docker Desktop to complete the setup.

1. Verify everything is working and launch a test container:

    ```
    docker --version
    docker run hello-world
    ```

## Apple macOS

This assumes that Homebrew is installed as the package manager on macOS.

1. Install Visual Studio Code:
    ```
    brew install --cask visual-studio-code
    ```

1. Install Docker Desktop:
    ```
    brew install --cask docker-desktop
    ```

1. Verify everything is working and launch a test container:
    ```
    docker --version
    docker run hello-world
    ```

## Linux

1. Install Visual Studio Code with the following commands:
    ```
    sudo apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt-get update
    sudo apt-get install code
    ```

1. Install Docker with the following commands:
    ```
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    ```

1. Download the Docker Desktop .deb directly (this replaces installing docker-ce etc.):
    ```
    curl -fsSLo docker-desktop-amd64.deb https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb
    ```

    (swap amd64 for arm64 if you're on ARM64 Debian)

1. Install Docker Desktop via apt:
    ```
    sudo apt-get install ./docker-desktop-amd64.deb
    ```

1. Verify everything is working and launch a test container:
    ```
    docker --version
    docker run hello-world
    ```