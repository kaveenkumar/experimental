from pathlib import Path
folder = "/home/kaveen/datasets/en/"

for path in Path(folder).rglob('*.wav'):
    if os.path.getsize(path) < 10 * 1024:
        os.remove(path)
