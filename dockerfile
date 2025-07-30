✅ 3. Dockerfile


📘 Definition:
    A Dockerfile is a text file containing instructions used by Docker to build a custom image.
    Each instruction creates a layer in the image.

🧱 Key Instructions in a Dockerfile:
        Instruction	      Description
        FROM	          Specifies base image (e.g., ubuntu, golang, alpine).
        WORKDIR	        Sets the working directory inside the container.
        COPY	          Copies files/folders from the host into the container.
        RUN	            Executes shell commands at build time (e.g., install packages).
        CMD	            Defines the default command to run when the container starts.
        EXPOSE	        Documents which port the container listens on (doesn’t publish it).
        ENV	            Sets environment variables.
        ENTRYPOINT	    Similar to CMD, but more strict (used for wrapper scripts).

📄 Example Dockerfile (Go App):
dockerfile
Copy
Edit
FROM golang:1.20
WORKDIR /app
COPY . .
RUN go build -o main .
CMD ["./main"]



🔄 CMD vs ENTRYPOINT:
Feature        	      CMD	                                            ENTRYPOINT
Overridable?	      Yes (can override at docker run)	                Not easily overridden
Use case	          Default arguments	                                Mandatory startup script or binary

📌 Tips:
Use .dockerignore to exclude unnecessary files from the image.

Use multi-stage builds to reduce image size.

Keep Dockerfiles simple and readable.

