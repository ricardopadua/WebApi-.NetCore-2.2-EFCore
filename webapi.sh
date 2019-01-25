## api .netcore 


## Solution name 
solution='BirdcodeIO'

## Create solution folder  
mkdir Backend && cd Backend

## Create solution 
dotnet new sln --name ${solution}

## Create project WebApi
dotnet new webapi --name ${solution}.WebApi 

## Create project Domain 
dotnet new classlib --name ${solution}.Domain

## Create project Service
dotnet new classlib --name ${solution}.Service

## Create project Service
dotnet new classlib --name ${solution}.Infrastructure

## Create project Test
dotnet new xunit --name ${solution}.Test

## Create references 

## WebApi
dotnet add ${solution}.WebApi/${solution}.WebApi.csproj reference ${solution}.Domain/${solution}.Domain.csproj
dotnet add ${solution}.WebApi/${solution}.WebApi.csproj reference ${solution}.Service/${solution}.Service.csproj

## Test
dotnet add ${solution}.Test/${solution}.Test.csproj reference ${solution}.Domain/${solution}.Domain.csproj
dotnet add ${solution}.Test/${solution}.Test.csproj reference ${solution}.Service/${solution}.Service.csproj
dotnet add ${solution}.Test/${solution}.Test.csproj reference ${solution}.WebApi/${solution}.WebApi.csproj

## Service
dotnet add ${solution}.Service/${solution}.Service.csproj reference ${solution}.Domain/${solution}.Domain.csproj
dotnet add ${solution}.Service/${solution}.Service.csproj reference ${solution}.Infrastructure/${solution}.Infrastructure.csproj

## Infrastructure
dotnet add ${solution}.Infrastructure/${solution}.Infrastructure.csproj reference ${solution}.Domain/${solution}.Domain.csproj


## joining project in a solution 
dotnet sln  ${solution}.sln add ${solution}.WebApi ${solution}.Domain ${solution}.Service ${solution}.Infrastructure ${solution}.Test 

## install packages nuget
cd ${solution}.WebApi
dotnet new nugetconfig 
dotnet add package Dapper --version 1.50.5
cd ..
cd ${solution}.Domain
dotnet add package FluentValidation.AspNetCore --version 8.1.2 
cd ..
cd ${solution}.Infrastructure
dotnet add package Microsoft.EntityFrameworkCore.Design --version 3.0.0-preview.18572.1
dotnet add package Microsoft.EntityFrameworkCore.Tools --version 3.0.0-preview.18572.1 
dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 2.2.1  
cd ..
cd ${solution}.Service
dotnet add package FluentValidation.AspNetCore --version 8.1.2 
cd ..
#dotnet add package solution.Core.DotNetCore.ConexaoDB -s http://nuget.birdcode.io/

## visual code initialize
cd .. && code .
