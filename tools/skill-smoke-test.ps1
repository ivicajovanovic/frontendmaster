param(
  [string]$Workspace = "E:\tmp3\frontend",
  [string]$Validator = "C:\Users\ASUS\.codex\skills\.system\skill-creator\scripts\quick_validate.py"
)

$ErrorActionPreference = "Stop"
$skills = Get-ChildItem -Path $Workspace -Directory | Where-Object {
  Test-Path (Join-Path $_.FullName 'SKILL.md')
}

if (-not $skills) {
  Write-Host "No skills found under $Workspace"
  exit 1
}

$failed = $false
foreach ($s in $skills) {
  $skillMd = Join-Path $s.FullName 'SKILL.md'
  Write-Host "==> $($s.Name)"

  $content = Get-Content -Raw $skillMd
  if ($content -notmatch "(?s)^---\r?\nname:\s+.+\r?\ndescription:\s+.+\r?\n---") {
    Write-Host "  [FAIL] invalid frontmatter pattern"
    $failed = $true
  } else {
    Write-Host "  [OK] frontmatter pattern"
  }

  if (Test-Path $Validator) {
    $output = python $Validator $s.FullName 2>&1
    if ($LASTEXITCODE -eq 0) {
      Write-Host "  [OK] quick_validate"
    } else {
      Write-Host "  [FAIL] quick_validate: $output"
      $failed = $true
    }
  } else {
    Write-Host "  [WARN] validator not found at $Validator"
  }
}

if ($failed) {
  Write-Host "\nSmoke test: FAILED"
  exit 1
}

Write-Host "\nSmoke test: PASSED"