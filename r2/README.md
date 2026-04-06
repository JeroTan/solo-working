# Solo Working — R2 Upload Package

This folder contains **Solo Working** bundled and structured for upload to the **web-novel-viewer-storage** R2 bucket on Cloudflare.

## ✅ Upload Checklist

Before uploading, verify all items:

- [x] `solo-working/meta.json` — Metadata file with novel information
- [x] `solo-working/chapters/` — All 25 chapters (00001.md through 00025.md)
- [x] `solo-working/assets/cover_art.png` — Cover art image
- [x] File naming — Chapter files are zero-padded (00001, 00002, etc.)
- [x] meta.json structure — All required fields present
- [x] Status field — Set to `"completed"`

## 📋 Folder Structure

```
solo-working/
├── meta.json                    # Novel metadata
├── chapters/
│   ├── 00001.md               # Chapter 1: The Weakest in the Office
│   ├── 00002.md               # Chapter 2
│   ├── ...
│   └── 00025.md               # Chapter 25: The First Commit (Epilogue)
└── assets/
    └── cover_art.png          # Cover art (800x1200px minimum)
```

## 🚀 Upload Instructions

### Option 1: Using the Upload Script (Recommended)

```bash
# Make sure Wrangler is installed
npm install -g @cloudflare/wrangler

# Run the upload script
pwsh .\upload.ps1
```

The script will:
- Validate all files exist
- Confirm before uploading
- Upload meta.json, all 25 chapters, and cover art
- Report completion status

### Option 2: Manual Upload with Wrangler CLI

```bash
# Upload meta.json
wrangler r2 object put web-novel-viewer-storage/novels/solo-working/meta.json --file=./solo-working/meta.json

# Upload all chapters
for ($i = 1; $i -le 25; $i++) {
    $chapter = "{0:D5}.md" -f $i
    wrangler r2 object put "web-novel-viewer-storage/novels/solo-working/chapters/$chapter" --file="./solo-working/chapters/$chapter"
}

# Upload cover art
wrangler r2 object put web-novel-viewer-storage/novels/solo-working/assets/cover_art.png --file=./solo-working/assets/cover_art.png
```

## 📄 File Details

### meta.json

```json
{
  "title": "Solo Working",
  "author": "Solo Working Collective",
  "description": "A Filipino office parody novel where a perpetually-overlooked Rank-F employee awakens a mysterious Work System...",
  "status": "completed",
  "genre": ["fantasy", "comedy", "parody"],
  "tags": ["corporate-grind", "solo-leveling-inspired", "office-satire", "filipiniana", "litrpg", "dark-humor", "workplace-fiction"],
  "language": "en",
  "publishedAt": "2026-03-01",
  "updatedAt": "2026-04-06"
}
```

- **Title:** Solo Working
- **Author:** Solo Working Collective
- **Status:** Completed (all 25 chapters finished)
- **Total Word Count:** ~27,500 words
- **Genres:** Fantasy, Comedy, Parody
- **Language:** English

### Chapters (00001.md — 00025.md)

- Each chapter is properly formatted Markdown
- Chapter metadata (title) included in optional YAML frontmatter
- Chapters are sequential and complete
- Ready for display in web novel viewer

### Cover Art (cover_art.png)

- **Dimensions:** Optimized for thumbnail and detail display
- **Format:** PNG
- **Size:** ≤ 500KB
- **Description:** Digital illustration in Solo Leveling manhwa style, depicting Juan dela Cruz in a corporate office setting with Shadow Workers in the background

## 🔍 Validation Tips

### Validate JSON
```bash
# Test if meta.json is valid
Get-Content .\solo-working\meta.json | ConvertFrom-Json
```

### Verify Chapter Count
```bash
# Should show 25 files
(Get-ChildItem .\solo-working\chapters\*.md).Count
```

### Check File Naming
```bash
# Should show files 00001.md through 00025.md
Get-ChildItem .\solo-working\chapters\ | Select-Object Name
```

## ⚠️ Important Notes

1. **Bucket Name:** `web-novel-viewer-storage`
2. **Path Prefix:** All files upload to `novels/solo-working/`
3. **No Modifications:** Do not rename chapters after upload
4. **Status:** Novel is marked as `completed` — no new chapters planned
5. **Language:** Content is in English with Filipino cultural references

## 📞 Troubleshooting

**"Wrangler not found"**
```bash
npm install -g @cloudflare/wrangler
```

**"Cannot authenticate with R2"**
- Verify your Cloudflare API token is set in `~/.wrangler/config.toml`
- Check that the R2 bucket exists and you have permissions

**"Upload times out"**
- Try uploading chapters in smaller batches
- Check your internet connection

---

**Ready to upload?** Run `pwsh .\upload.ps1` to get started!

For detailed formatting guidelines, see the `novel-uploader-guidelines-r2` skill documentation.
