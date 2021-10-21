# Convenient Accurate Tools

This repo includes two folders end with -judge, which include the plain code we wrote.

However we also want to preserve the git log during development, so we include the submodule link to our two development repo to prove our step effort.
## Install

You can simply deploy the frontend and backend together with `install.sh`. And it's recommanded to check the content of script before priviledged install.

**This script works with the assumption of "frontend code in USTC2021-frontend folder, backend code in backend folder", so if not cloned recursively, remove the two empty folder and strip out the -judge suffix, then run the script.**

The script works like follows:

1. Make sure server and database installed
2. Copy folder into /var/www
3. Deploy backend with setup.sh in backend folder.

And in setup.sh, we do the following things:

1. Create virtual environment.
2. Install the requirements for prediction and apis.
3. Move required nginx and systemd config files.
4. Start server.

**Note: Given that we can't do a completely test on variety of environment, there maybe some problems during deployment, then please refer to the error log of nginx and read service logs with journalctl to solve the problem.**

## Uninstall

Just run clean.sh and the installed file will be removed.
