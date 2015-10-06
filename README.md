# Git Commands
---

## 1. Overview
This is my personal collection of git commands, aliases, scripts and hooks. I use these on a daily basis to make working with git more easily (to be honest, I'm just lazy). 

I will be adding automatic build & configuration scripts later.

## 2. Aliases

The aliases I have configured are located in the `alias` directory.

| Alias | Description
|-----|--------
| `a` | Alias for `add` 
| `br` | Alias for `branch`
| `ci` | Alias for `commit`
| `co` | Alias for `checkout`
| `st` | Alias for `status`
| `incoming` | Fetches and shows incoming changes
| `outgoing` | Fetches and shows outgoing changes
| `last` | Shows the last commit
| `graph` | Shows a pretty formatted log in a graph with one line commits
| `ignore` | Ignore stuff by adding it to the `.gitignore` file. The first parameter is used.
| `uncommit` | Soft resets to the previous commit
| `tm` | Tests commits using Maven. Note: requires `[git-test](https://github.com/spotify/git-test)`

## 3. Guess user

Located in the `guess-user` folder, the `guess-user` functionality automagically 
sets the correct username and email address based on the remote of the repository.

This is very useful if you work on different Git repositories with the same device.

There is a `post-checkout` hook that runs an aliased script. You will need to configure
your own usernames and email addresses in the script.




