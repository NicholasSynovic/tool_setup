CORE_PACKAGES = gcc make perl git curl

updateSystem:
	apt update
	apt upgrade -y
	apt autoremove --purge -y
	snap refresh

installCoreSoftware:
	apt install -y $(CORE_PACKAGES)

installAnsible:
	curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python3 get-pip.py --user
	python3 -m pip install --upgrade pip
	python3 -m pip install --user ansible
