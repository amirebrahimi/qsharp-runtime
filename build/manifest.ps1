# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

& "$PSScriptRoot/set-env.ps1"

@{
    Packages = @(
        "Microsoft.Azure.Quantum.Client",
        "Microsoft.Quantum.CsharpGeneration",
        "Microsoft.Quantum.Development.Kit",
        "Microsoft.Quantum.EntryPointDriver",
        "Microsoft.Quantum.QSharp.Core",
        "Microsoft.Quantum.Runtime.Core",
        "Microsoft.Quantum.Simulators",
        "Microsoft.Quantum.Xunit"
    );
    Assemblies = @(
        ".\src\Azure\Azure.Quantum.Client\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Azure.Quantum.Client.dll",
        ".\src\Simulation\CsharpGeneration\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Quantum.CsharpGeneration.dll",
        ".\src\Simulation\CsharpGeneration.App\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.CsharpGeneration.App.dll",
        ".\src\Simulation\CsharpGeneration.App\bin\$Env:BUILD_CONFIGURATION\netcoreapp3.1\Microsoft.Quantum.RoslynWrapper.dll",
        ".\src\Simulation\Core\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Quantum.Runtime.Core.dll",
        ".\src\Simulation\EntryPointDriver\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Quantum.EntryPointDriver.dll",
        ".\src\Simulation\QsharpCore\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Quantum.QSharp.Core.dll",
        ".\src\Simulation\Simulators\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Quantum.Simulation.Common.dll",
        ".\src\Simulation\Simulators\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Quantum.Simulation.QCTraceSimulatorRuntime.dll",
        ".\src\Simulation\Simulators\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Quantum.Simulators.dll",
        ".\src\Xunit\bin\$Env:BUILD_CONFIGURATION\netstandard2.0\Microsoft.Quantum.Xunit.dll"
    ) | ForEach-Object { Get-Item (Join-Path $PSScriptRoot (Join-Path ".." $_)) };
} | Write-Output;
