Install by doing:

```
git clone --recursive $repo ~/.dotfiles
```

Manging vim plugins:

# Add new plugin:
```
cd ~/.vim/bundle
git submodule add $path_to_repository
```

# Update all plugins:
```
git submodule foreach git pull origin master
```
