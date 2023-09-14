# Ruby on Rails Development Environment Setup Script for Ubuntu

This script automates the setup of a Ruby on Rails development environment on Ubuntu. It installs essential development tools, sets up Ruby with RVM (Ruby Version Manager), installs Node.js and Yarn, sets up databases (MySQL and PostgreSQL), and installs popular text editors.

## Prerequisites

- A clean installation of Ubuntu.
- An internet connection to download packages and dependencies.

## Usage

1. Install the script directly:
    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ramzieus/rails_dev_setup/master/run.sh)"
2. Follow the on-screen prompts and provide necessary inputs when required (e.g., setting MySQL root password).

### Customization
You can customize the script by adjusting the following variables in the script:
NODE_MAJOR: Set the Node.js major version (e.g., 16, 18, 20) you want to install.


### Included Software
Oh-My-Zsh: A popular shell customization framework.
RVM (Ruby Version Manager): To manage Ruby versions.
Node.js and Yarn: JavaScript runtime and package manager.
MySQL: A relational database management system.
PostgreSQL: A powerful, open-source relational database.
Visual Studio Code: A versatile code editor.
RubyMine: A Ruby on Rails IDE.

### Disclaimer
This script is intended for setting up a development environment and may not be suitable for production systems.
Use it on a clean Ubuntu installation or be cautious if using it on systems with existing configurations.
Back up your data before running the script.
