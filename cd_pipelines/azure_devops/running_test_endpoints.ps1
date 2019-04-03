param(
  [Parameter(Mandatory=$true)]
  [string]$PythonEnv,
  [Parameter(Mandatory=$true)]
  [string]$ArtifactDir
)


Write-Host "Switch to Virtual Environment"
. .\$PythonEnv\Scripts\Activate.ps1

Write-Host "Building the test endpoints"
python outsystems/pipeline/evaluate_test_results.py --artifacts "$ArtifactDir"

Write-Host "Leave the Virtual Environment for now"
deactivate