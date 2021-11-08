# mac-infra
I use Ansible to provision my macOS installation, and here are some of the packages and applications I need for my work flow

## Installation

1. Install ansible into a virtual environment
 	- `python3 -m venv ansible`
	- `source ansible/bin/activate`
	- `python3 -m pip install ansible`

2. Clone this repository, and `cd` into it.

3. Run `make install` for all the prerequisite.

4. Run `make setup` to run the complete setup.
