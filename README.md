# Git Push Automation Shell Script

**Use only remote : origin**

Run this,

```
$ ./git-push.sh
```

This code executes the following 4 things :

```
$ git pull ${remote} ${branch}
$ git add --all
$ git commit -m ${commit message}
$ git push ${remote} ${branch}
```

If you don't write commit message, script will receive commit message by shell.

```
-> git commit ...
-> Enter commit message :
...
-> git commit complete
```

<br>
---
**Updated :** 2021-09-29 00:50
