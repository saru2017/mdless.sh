# mdless.sh

pandocとw3cを使ったコマンドラインmarkdown viewer。
rubyで作られてるmdlessを入れたかったのだけどどうやってもcygwinでうまく動かないのでpandocとw3mで自作したシェルスクリプト。

```bash
#!/usr/bin/bash

if [ $# -ne 1 ]; then
    echo "usage: mdless [filename]"
    exit
fi 

pandoc -f markdown -t html $1 | w3m -T text/html
```

