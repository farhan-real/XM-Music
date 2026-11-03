import os
import json
import re

MUSIC_DIR = "music"
SUPPORTED_EXTS = (
    ".xm", ".mod", ".it", ".s3m", ".mtm", ".fc13", ".fc14", 
    ".amd", ".rad", ".bp", ".mo3", ".hsc", ".d00", ".mp3", 
    ".ogg", ".wav", ".v2m", ".sc68", ".mid", ".ahx", ".sid", 
    ".sap", ".ym", ".nsf", ".spc", ".flac"
)

def clean_name(str_val):
    s = str_val.replace('_-_', ' - ').replace('_', ' ')
    s = re.sub(r'\s+', ' ', s)
    return s.strip()

track_list = []
print(f"Scanning '{MUSIC_DIR}' recursively...")

for root, _, files in os.walk(MUSIC_DIR):
    for f in sorted(files):
        ext = os.path.splitext(f)[1].lower()
        if ext in SUPPORTED_EXTS:
            rel_path = os.path.relpath(os.path.join(root, f), ".").replace("\\", "/")
            base_name = clean_name(os.path.splitext(f)[0])
            
            # Extract folder category
            subfolder = os.path.basename(root)
            if subfolder.lower() == "music":
                subfolder = "Root"

            # Parse "artist - title" from filename
            artist = "Unknown Artist"
            title = base_name
            if " - " in base_name:
                parts = base_name.split(" - ", 1)
                artist = parts[0].strip()
                title = parts[1].strip()

            track_list.append({
                "title": title,
                "artist": artist,
                "folder": subfolder,
                "path": rel_path,
                "ext": ext.replace(".", "").upper()
            })

with open("tracks.json", "w", encoding="utf-8") as out:
    json.dump(track_list, out, indent=2, ensure_ascii=False)

print(f"Done! Indexed {len(track_list)} tracks into tracks.json.")