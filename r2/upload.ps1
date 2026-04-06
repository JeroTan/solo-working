#!/usr/bin/env pwsh

# Solo Working - R2 Bulk Upload Script
# Uploads all Solo Working novel files to Cloudflare R2 bucket

$BUCKET_NAME = "web-novel-viewer-storage"
$NOVEL_SLUG = "solo-working"
$LOCAL_DIR = "F:\media\creatives\stories\solo_working\r2\solo-working"

Write-Host ""
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "   Solo Working - R2 Bulk Upload Script" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "[*] Validating local structure..." -ForegroundColor Yellow
$metaExists = Test-Path "$LOCAL_DIR\meta.json"
$chaptersCount = @(Get-ChildItem "$LOCAL_DIR\chapters\*.md" -ErrorAction SilentlyContinue).Count
$coverExists = Test-Path "$LOCAL_DIR\assets\cover_art.png"

Write-Host "  [+] meta.json: $(if ($metaExists) { 'FOUND' } else { 'MISSING' })"
Write-Host "  [+] Chapters: $chaptersCount/25"
Write-Host "  [+] Cover art: $(if ($coverExists) { 'FOUND' } else { 'MISSING' })"
Write-Host ""

if (-not $metaExists -or $chaptersCount -eq 0 -or -not $coverExists) {
    Write-Host "[!] Validation failed!" -ForegroundColor Red
    exit 1
}

Write-Host "[*] Ready to upload:" -ForegroundColor Yellow
Write-Host "  Bucket: $BUCKET_NAME"
Write-Host "  Novel: $NOVEL_SLUG"
Write-Host "  Files: meta.json + $chaptersCount chapters + cover art"
Write-Host ""
$confirm = Read-Host "Continue? (yes/no)"

if ($confirm -ne "yes") {
    Write-Host "[*] Upload cancelled." -ForegroundColor Yellow
    exit 0
}

Write-Host "[START] Uploading files..." -ForegroundColor Green
Write-Host ""

Write-Host "  [1/27] meta.json..." -ForegroundColor Cyan
wrangler r2 object put "$BUCKET_NAME/novels/$NOVEL_SLUG/meta.json" --file="$LOCAL_DIR\meta.json" --content-type="application/json" --remote

$chapters = Get-ChildItem "$LOCAL_DIR\chapters\*.md" | Sort-Object Name
$chapterIndex = 2
foreach ($chapter in $chapters) {
    Write-Host "  [$chapterIndex/27] $($chapter.Name)..." -ForegroundColor Cyan
    wrangler r2 object put "$BUCKET_NAME/novels/$NOVEL_SLUG/chapters/$($chapter.Name)" --file="$($chapter.FullName)" --content-type="text/markdown" --remote
    $chapterIndex++
}

Write-Host "  [27/27] cover_art.png..." -ForegroundColor Cyan
wrangler r2 object put "$BUCKET_NAME/novels/$NOVEL_SLUG/assets/cover_art.png" --file="$LOCAL_DIR\assets\cover_art.png" --content-type="image/png" --remote

Write-Host ""
Write-Host "========================================================" -ForegroundColor Green
Write-Host "DONE - Solo Working is now live on R2!" -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Green
Write-Host ""
