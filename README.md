# git-list

Adds a `git list` command to your global git config file that prints all configurations added for a category, separated in 3 sections: SYSTEM, GLOBAL and LOCAL.

# install

`\curl -sSL https://raw.githubusercontent.com/marcosalles/git-list/master/install.sh | bash -s`

# how to use

```
git list [category]
```

`category` is optional and defaults to `alias`. If no configs for a section are found, the script skips that section. If no configs are found in any section, quits with `exit code 1`.
