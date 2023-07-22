#!/bin/bash

echo "Please enter the project name:"
read projectname

echo "Do you want to create a new solution (yes/no)?"
read createNewSolution

if [ "$createNewSolution" == "yes" ]; then
    # Create the solution
    dotnet new sln -n $projectname
    solutionPath="$projectname.sln"
else
    echo "Please enter the existing solution path:"
    read solutionPath
fi

# Create the API project
dotnet new webapi -n $projectname.API
dotnet sln $projectname.sln add $projectname.API/$projectname.API.csproj
echo "$projectname.API" >> dotnetEntries.txt

# Create the Domain project
dotnet new classlib -n $projectname.Domain
dotnet sln $projectname.sln add $projectname.Domain/$projectname.Domain.csproj
echo "$projectname.Domain" >> dotnetEntries.txt

# Create the Application project
dotnet new classlib -n $projectname.Application
dotnet sln $projectname.sln add $projectname.Application/$projectname.Application.csproj
echo "$projectname.Application" >> dotnetEntries.txt

# Create the Infrastructure project
dotnet new classlib -n $projectname.Infrastructure
dotnet sln $projectname.sln add $projectname.Infrastructure/$projectname.Infrastructure.csproj
echo "$projectname.Infrastructure" >> dotnetEntries.txt

