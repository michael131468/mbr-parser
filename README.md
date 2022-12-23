# Python3 Port of Gleeda's MBR Parser

This is a port of [Gleeda's mbr_parser.py][1] script from Python2 to Python3.

I was playing in a capture the flag (CTF) exercise hosted within my company for
employees that had many scavenger hunt style exercises. One of these exercises
was to investigate a mysterious 512 byte file (that in the storyline of the
competition, was gathered from a disk in a crashed satellite). This turned out
to be a master boot record (MBR) header for the disk drive and so I needed to
investigate the MBR data embedded.

I came upon [Gleeda's mbr_parser.py script][1] which helped me to parse the
master boot record (MBR) and provide an informative report and breakdown of the
structure and contents (including dumping the embedded program to assembly). It
was of great help in the CTF exercise and gave me all the information I needed
in order to solve the puzzle.

Since the script was last updated in 2013 and was written for Python2, I could
not trivially execute it and needed to spawn a Python2 docker environment for
it to run within.

I decided to port it to Python3 to refresh it.

## Containerised

You can run the script from a container using the provided Containerfile.

Example:

```
podman build -t mbr-parser:latest .
podman run --rm -v $(pwd):/mnt mbr-parser -f /mnt/example/mbr.bin
```

## LICENSE

The original script contains a license disclaimer embedded that shows it is
licensed under GPLv2 or any later GPL version. I've added in addition a GPLv2
LICENSE file to this repository to reflect the disclaimer repository wide.

[1]: https://github.com/gleeda/misc-scripts/blob/master/misc_python/mbr_parser.py
