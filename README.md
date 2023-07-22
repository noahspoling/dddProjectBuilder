# .NET Project Automation Scripts

This repository contains a set of bash shell scripts to automate the creation, building, and management of .NET projects on Linux.

## Scripts

Below is a brief description of each script in this repository.

### build.sh

This script is used to build all the .NET projects listed in `dotnetEntities.txt`. It iterates over each project listed in the file and runs the `dotnet build` command.

### clean.sh

The `clean.sh` script is used to clean the build outputs of all the .NET projects listed in `dotnetEntities.txt`. This script runs the `dotnet clean` command for each project.

### createAngularApp.sh

This script automates the creation of a new Angular application. When you run this script, it prompts you to enter the name of the application and then uses the Angular CLI to create a new application with that name.

### createDDD.sh

The `createDDD.sh` script automates the creation of a new Domain-Driven Design (DDD) .NET solution. It prompts you to enter the name of the project and whether you want to create a new solution or add to an existing one. It then creates the necessary projects (API, Domain, Application, and Infrastructure) and adds them to the solution. The names of the newly created projects are also added to the `dotnetEntities.txt` file.

### dotnetEntities.txt

This is not a script, but a text file used by other scripts in this repository. It contains a list of .NET projects that the `build.sh`, `clean.sh`, and `rebuild.sh` scripts operate on.

### projectTree.sh

This script outputs a tree-like directory structure of the current project. This can be useful to get a quick overview of the project's structure.

### rebuild.sh

The `rebuild.sh` script is used to clean and then build all the .NET projects listed in `dotnetEntities.txt`. It essentially combines the actions of the `clean.sh` and `build.sh` scripts.

## Usage

To use these scripts, clone this repository and run the scripts from the command line, like so:

```bash
./build.sh
```

## NOTE

This command will make them all executable
```
chmod +x *.sh
```
