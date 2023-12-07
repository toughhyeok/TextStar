# TextStar :star2:

This is a TextStar application that allows you to...

## Requirements :rocket:

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- Compatible with Linux or MacOS environments

## Installation :gear:

1. Run the following commands in your terminal:
    ```bash
    $ sudo ./setup.sh
    [...]
    🚀 Alias 'ts' added to /etc/hosts
    🚀 Please execute start.sh as follow:
	    './start.sh'
    $ ./start.sh
    [...]
    🚀 Now enjoy TextStart at
        http://<alias>/admin
    ```

2. If you encounter a shell script permission error, execute the following commands:
    ```bash
    chmod +x ./setup.sh ./start.sh
    ```
    These commands ensure that the necessary permissions are granted to the shell scripts.

## Usage :computer:

Once the installation is complete, access the TextStar app by visiting `http://<alias>/admin` :sparkles:

Note: Replace `<alias>` with your desired alias name.
