# mac-infra
I use Ansible to provision my macOS installation, and here are some of the packages and applications I need for my work flow

## Installation

1. Install ansible into a virtual environment
 	- `python3 -m venv ansible`
	- `source ansible/bin/activate`
	- `python3 -m pip install ansible`

2. Clone this repository, and `cd` into it.

3. Run `make install` for all the prerequisites.

4. Run `make setup` to run the complete setup.

## Manual Post-Install Steps

There are some steps that are not readily automated (by me), so do the following:

### System settings

- Set `System Preferences` -> `General` -> `Appearance: Dark`

### For neovim setup

- Open nvim using `v` (from aliasing) or `nvim`
- Run `:PlugInstall` to install all the defined vim-plug plugins

### Amethyst Tiling Window Manager

- Enable `Window Margins` of 5px and check `Smart Window Margins1, which is left to default of 0px.
- Enable any layouts you need on the `Layouts` tab.
- Restart Amethyst.

