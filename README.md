# XM-Music

> Static chiptune and tracker module audio repository optimized for high-performance streaming in [XM-Studio](https://github.com/farhan-real/XM-Studio) and compatible WebAudio players.

---

## Overview

`XM-Music` is a dedicated static storage repository hosting a curated catalog of tracker modules and chiptunes. By decoupling the large audio catalog from the player workstation:

- **Ultra-Fast Player Deployments**: Keeps the `XM-Studio` application repository lightweight (< 2 MB) and free of heavy binary tracking.
- **Direct WebAudio Streaming**: Hosted via GitHub Pages with open cross-origin headers (`Access-Control-Allow-Origin: *`), allowing client-side WebAssembly DSP engines (`libopenmpt`) to fetch, decode, and compile tracks directly in memory.
- **Zero-Backend Catalog**: Uses a statically generated `tracks.json` index file to serve search queries, category filters, and playlist selectors with zero server-side computation.

---

## Directory Structure

```text
XM-Music/
├── generate_index.py       # Python script to scan music/ and rebuild tracks.json
├── tracks.json             # Manifest indexed by XM-Studio for instant search
├── README.md               # Repository documentation
└── music/                  # Directory containing all audio files
    ├── Amiga_Classics/
    │   ├── Jochen Hippel - Wings of Death.mod
    │   └── Pink & Maktone - Tune.xm
    ├── Demoscene/
    │   └── Skaven - Catch That Goblin.xm
    └── FastTracker2/
        └── Dubmood and Zabutom - Keygen.xm
```

---

## Supported Audio Formats

| Category | File Extensions |
| :--- | :--- |
| **Tracker Modules** | `.xm`, `.mod`, `.it`, `.s3m`, `.mtm`, `.mo3`, `.med`, `.669`, `.far`, `.ptm` |
| **Chiptune & Retro** | `.v2m`, `.ahx`, `.sid`, `.sap`, `.ym`, `.nsf`, `.spc`, `.mid`, `.rad`, `.fc13`, `.fc14` |
| **Native Streams** | `.flac`, `.mp3`, `.ogg`, `.wav` |

---

## How to Add Music & Rebuild the Index

### 1. Place Audio Files into Subfolders
Organize tracks into logical categories, genres, or artist directories inside `music/`. Follow the standard naming convention so the indexer can parse clean metadata automatically:

```text
Artist - Title.ext
```

*Example:* `music/Demoscene/Purple Motion - Satellite One.s3m`

### 2. Run the Indexer
Run the provided Python script to scan the directory tree recursively and regenerate `tracks.json`:

```bash
python generate_index.py
```

The script cleans up underscored filenames, extracts folder categories, identifies file formats, and outputs a compressed JSON catalog:

```json
[
  {
    "title": "Satellite One",
    "artist": "Purple Motion",
    "folder": "Demoscene",
    "path": "music/Demoscene/Purple Motion - Satellite One.s3m",
    "ext": "S3M"
  }
]
```

### 3. Commit and Push to GitHub
Stage the new audio files and the updated `tracks.json`:

```bash
git add music/ tracks.json
git commit -m "feat(library): add new tracker tracks and update catalog index"
git push origin main
```

---

## Connecting to XM-Studio

Once GitHub Pages is enabled on this repository, your music catalog is immediately accessible at:

```text
https://<your-username>.github.io/XM-Music/
```

### In XM-Studio:
1. Open the left sidebar and switch to the **Source** tab.
2. Under **Online Repositories (Multiple)**, enter:
   ```text
   https://<your-username>.github.io/XM-Music/
   ```
3. Click **+ Add** and then **Sync All Repos**.
4. All tracks will instantly populate the main **Archive** list, ready for playback, playlist curation, and hardware export.

---

## GitHub Deployment & Size Guidelines

- **Recommended Repository Size**: GitHub recommends keeping repositories below 1 GB. If you have ~700–800 MB of audio files, commit them in a **single initial commit** when first creating the repository to prevent Git history from doubling the storage size.
- **GitHub Pages Configuration**:
  1. Navigate to **Settings** → **Pages** in this repository.
  2. Under **Build and deployment > Source**, select **Deploy from a branch**.
  3. Set the branch to `main` and folder to `/ (root)`.
  4. Save. Your tracks and `tracks.json` will be served over HTTPS with global CDN caching.

---

## Credits & License

- Music files hosted in this repository belong to their respective demoscene composers, artists, and tracker musicians.
- Shared for educational, historical preservation, and non-commercial streaming purposes.
- Catalog indexing script and documentation are provided under the MIT License.