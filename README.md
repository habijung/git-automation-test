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
```

After writing commit message, check if it is correct.

```
-> Your commit message : ${commit message}
-> [ Yes = 1 | No = other ] :
```

Then, git commit and git push are done automatically.

```
-> git commit complete
-> git push complete
```


<br>

---
**Updated :** 2021-10-10 22:00
