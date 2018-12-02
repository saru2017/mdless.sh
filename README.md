# mdless.sh: mdless like schell script for command line based markdown viewer.

A command line based markdown viewer which uses pandoc and w3c.
I have tried to install [mdless](https://github.com/ttscoff/mdless) to cygwin environment, but I couldn't.
So I made mdless like shell script using pandoc and w3c.

Pandoc for Windows can be downloaded from [Release pandoc 2.5 · jgm/pandoc](https://github.com/jgm/pandoc/releases/tag/2.5).

```bash
#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "usage: $0 [filename]"
    exit
fi 

pandoc -f markdown -t html $1 | w3m -T text/html
```

# Reference

- [ttscoff/mdless](https://github.com/ttscoff/mdless)
- [Pandoc - About pandoc](https://pandoc.org/)
