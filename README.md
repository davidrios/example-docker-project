# Example Docker project

This project is part of this guide: <https://davidrios.dev/2020/11/01/docker-vscode.html>.


# Running it

You need a recent version of Docker and docker-compose.

Create a copy of `.env.template` as `.env` and change as
necessary. If you are using Linux or WSL 2 under Windows,
you'll at least need to change the variable `LOCAL_USER_ID`
to the uid of your local user, which can be queried executing
`id -u` at the terminal.

Run the project by executing:

    $ docker-compose up --build

While the project is running, at another terminal:

If you have not configured the backend application yet, run
the script `./setup-backend.sh` once.

You can now access it at <http://localhost:8000> and the
Django admin at <http://localhost:8000/admin>, assuming you
didn't change the APP_PORT env var.


# Editing

You will need VS Code 1.50+ with these extensions:

- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

Now to edit the frontend source, open the folder `code/vscode/front`
in VS Code and click `Reopen in Container` when the notification
shows up.

To edit the backend source, open the folder `code/vscode/backend`
in VS Code and click `Reopen in Container` when the notification
shows up.

If you need more info, refer to the guide at the top of this
readme.