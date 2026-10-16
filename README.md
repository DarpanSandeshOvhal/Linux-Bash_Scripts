# logscan.sh

A small Bash script that counts files of a given extension in a directory and counts how many lines across those files contain a search word.

## What it does

1. Takes a directory as an argument and checks that it exists.
2. Asks for a file extension (e.g. `log`, `txt`).
3. Prints how many files with that extension are in the directory.
4. Asks for a word to search for.
5. Prints how many lines (across all matching files) contain that word. The search is case-insensitive.

## Usage

```bash
chmod +x logscan.sh
./logscan.sh <directory>
```

If the directory does not exist, the script prints a message and exits with code `1`.

## Example

```
$ ./logscan.sh .
/home/kali/Bash_Practice
Directory is present
input file extension  log
There are in total > 3 Files
after this input the word which you want to find inside all the files which you are searching for
ERROR
3
```

## Concepts practiced

- Script arguments (`$1`) and `if` / `else` with `[ -d ]`
- Exit codes (`exit 1`)
- `read` for user input
- Pipes: `ls | wc -l`, `cat | grep -i | wc -l`

## Known limitations / TODO

- No-match extension (e.g. `xyz`) shows an `ls` error; plan to fix with `shopt -s nullglob`
- Quote `"$file_ex"` in glob patterns
- Count only `ERROR` case-sensitively (optional flag)
- Handle filenames with spaces more safely

## Environment

Written and tested on Kali Linux (VirtualBox).
