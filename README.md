# Convenient Accurate Tools

## Install

You can simply deploy the frontend and backend together with `install.sh`. And it's recommanded to check the content of script before priviledged install.

The script works like follows:

1. Make sure server and database installed
2. Copy folder into /var/www
3. Deploy backend with setup.sh in backend folder.

And in setup.sh, we do the following things:

1. Create virtual environment.
2. Install the requirements for prediction and apis.
3. Move required nginx and systemd config files.
4. Start server.

** Note: Given that we can't do a completely test on variety of environment, there maybe some problems during deployment, then please refer to the error log of nginx and read service logs with journalctl to solve the problem.**
