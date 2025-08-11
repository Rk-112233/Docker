✅ 3. Dockerfile


📘 Definition:
    A Dockerfile is a text file containing instructions used by Docker to build a custom image.
    Each instruction creates a layer in the image.

🧱 Key Instructions in a Dockerfile:
| Instruction | Description                                                      |
| ----------- | -------------------------------------------------------------------- |
| FROM        | Specifies the base image (e.g., `ubuntu`, `golang`, `alpine`).       |
| WORKDIR     | Sets the working directory inside the container.                     |
| COPY        | Copies files/folders from the host into the container.               |
| RUN         | Executes shell commands at build time (e.g., install packages).      |
| CMD         | Defines the default command to run when the container starts.        |
| EXPOSE      | Documents which port the container listens on (does not publish it). |
| ENV         | Sets environment variables.                                          |
| ENTRYPOINT  | Similar to CMD, but more strict (often used for wrapper scripts).    |

📄 Example Dockerfile (Go App):
dockerfile
Copy
Edit
FROM golang:1.20
WORKDIR /app
COPY . .
RUN go build -o main .
CMD ["./main"]



🔹 CMD — Command
    CMD sets default arguments for the container’s main process. These defaults can be overridden when running the container using docker run.

🔹 ENTRYPOINT — Entry Point
    ENTRYPOINT sets the main command that will always be executed when the container starts. This command is not overridden by arguments passed to docker run (unless you explicitly use --entrypoint).

📌 Tips:
    1.Use .dockerignore to exclude unnecessary files from the image.
    2.Use multi-stage builds to reduce image size.
    3.Keep Dockerfiles simple and readable.

