# akkoma-emoji-pack-generator
Basic bash script to generate a `pack.json` file for an already existing folder of emoji image files. 

## Usage
Execute the script with a directory string as an argument
```bash
$ make-pack.sh $directory
```
e.g.
```bash
$ make-pack.sh /var/lib/akkoma/static/emoji/New_Pack
```

## Emoji file extensions
By default the script only recognizes `.png`, `.gif`, and `.webp` files, you can  easily add other extensions by editing the if statement in the script, if needed.
