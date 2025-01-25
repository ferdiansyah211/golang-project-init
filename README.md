# Golang Project Init

`golang-project-init` is a simple shell script designed to initialize a **Clean Architecture** project structure in Golang automatically.

## Features

- Automatically sets up a Clean Architecture project structure.
- Creates folders and files for:
  - **cmd**: Entry point for the application.
  - **config**: Configuration files (e.g., database, environment variables).
  - **internal**:
    - **entity**: Domain/entity definitions.
    - **usecase**: Business logic.
    - **repository**: Database interactions.
    - **delivery**: HTTP API handlers.
    - **utils**: Utility functions (JWT, hashing, etc.).
  - **migrations**: Database migration files.
  - **docs**: Project documentation.

## Installation

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/username/golang-project-init.git
cd golang-project-init
```

### 2. Set Up the Script Globally

#### For Linux/MacOS:

Copy the `init_project.sh` script to a global directory like `/usr/local/bin`:

```bash
sudo cp init_project.sh /usr/local/bin/init_project
sudo chmod +x /usr/local/bin/init_project
```

#### For Windows:

1. **Using Git Bash:**
   Execute the script directly:

   ```bash
   ./init_project.sh <project-name>
   ```

2. **Using PowerShell:**
   Use the provided `init_project.ps1` file from the repository. Save it to a location and run:

   ```powershell
   ./init_project.ps1 <project-name>
   ```

3. **Using Windows Subsystem for Linux (WSL):**
   Follow the installation steps for Linux/MacOS.

### 3. Verify Installation

Ensure the script is accessible from anywhere:

```bash
init_project --help
```

## Usage

### Create a New Project

Run the following command to create a new project:

```bash
init_project <project-name>
```

Example:

```bash
init_project my-awesome-project
```

This will create the following structure:

```plaintext
my-awesome-project/
├── cmd/
│   └── main.go
├── config/
│   └── config.go
├── internal/
│   ├── entity/
│   │   └── sample_entity.go
│   ├── usecase/
│   │   └── sample_usecase.go
│   ├── repository/
│   │   └── sample_repo.go
│   ├── delivery/
│   │   ├── http/
│   │   │   └── sample_handler.go
│   │   └── middleware/
│   │       └── auth_middleware.go
│   ├── config/
│   │   └── db.go
│   └── utils/
│       ├── jwt.go
│       ├── hash.go
│       └── response.go
├── migrations/
│   └── README.md
├── docs/
│   └── README.md
└── go.mod
```

### Notes for Windows Users

- If using **Git Bash** or **WSL**, execute the `init_project.sh` script directly.
- If using **PowerShell**, use the `init_project.ps1` file provided in the repository.

## Contributing

Feel free to create a pull request or report issues for improvements or additional features.

## License

This project is licensed under the [MIT License](LICENSE).
