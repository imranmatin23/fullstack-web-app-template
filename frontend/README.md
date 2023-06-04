# Frontend

The frontend was created using the `create-react-app` CLI. To run the frontend locally, set the environment variables in the `.env` file.

```bash
REACT_APP_BACKEND_URL="http://127.0.0.1:80"
CHOKIDAR_USEPOLLING=true
```

## Available Commands

### `make run-frontend`

Builds and runs the frontend's development server as a container using Docker Compose at http://127.0.0.1:3000.

### `make stop-frontend`

Stops the running frontend container.

### `make logs-frontend`

Retrieves the logs for the running frontend container.

## Reference Commands

These were the commands used in the inital setup of the frontend.

```bash
# Create the frontend React App
npx create-react-app frontend
# Enter React App
cd frontend
# Install dependencies
npm install react-router-dom
npm install axios
```

## Suggestions

- Add new routes in `src/App.js`.
- Add new pages in `src/pages/`.
- Add new styles for pages in `src/styles/`.
- Update the web app's metadata (e.g. favicon) in `public/`.
- To change the backend endpoint to use in the Axios HTTP requests, update the `REACT_APP_BACKEND_URL` in `.env`.

## References

[1] [Digital Ocean Create React App Tutorial](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-react-project-with-create-react-app) \
[2] [React Documentation](https://react.dev) \
[3] [Legacy React Documentation](https://legacy.reactjs.org) \
[4] https://create-react-app.dev/docs/adding-custom-environment-variables/#adding-development-environment-variables-in-env \
[5] [Dockerizing a React App](https://mherman.org/blog/dockerizing-a-react-app/)
