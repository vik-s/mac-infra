# mac-infra

I use Ansible to provision my macOS installation. My idea is to keep it simple, so the basic approach is:
- Setup all the software packages using [homebrew](https://brew.sh/).
- Clone my [dotfiles](https://github.com/vik-s/dotfiles) git repo, and setup symlinks to it.
- I use [kitty](https://sw.kovidgoyal.net/kitty/) as my terminal emulator, because I like it's speed and customizability. The stock terminal is pretty bland, so most of my focus is to get kitty looking good.
- I use [neovim](https://neovim.io/) as my text editor and [vim-plug](https://github.com/junegunn/vim-plug) as package manager.
- I use [amethyst](https://ianyh.com/amethyst/) as tiling window manager. It's free, lightweight and does not involve disabling key security features like [yabai](https://github.com/koekeishiya/yabai) requires. Besides, I don't need anything crazy or highly configurable here.

My kitty and neovim configurations will be constantly evolving, but they will all be tracked in the [dotfiles](https://github.com/vik-s/dotfiles) git repo.

Ultimately, there will always be some manual configuration needed. I will try to keep track of that here.

## Installation

1. Install ansible into a virtual environment
	- `mkdir ~/venvs && cd ~/venvs`
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

### Administer logins and licenses

- Google drive and Nextcloud will require login information
- Reaper will require license key
- I'll try to keep track of other software packages here as I add them

## Credits

Everything here is inspired by [Jeff Geerling's ansible playbook for mac](https://github.com/geerlingguy/mac-dev-playbook), and I use his ansible galaxy roles to write my own playbooks here, which makes it much easier.

