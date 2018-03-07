# refreshXcode

refreshXcode is a script to delete Xcode's cache.

- ~/Library/Developer/Xcode/DerivedData
- ~/Library/Developer/Xcode/iOS DeviceSupport

# USAGE

```bash
# The default behavior is to delete ~/Library/Developer/Xcode/DerivedData.
refreshXcode
# If you add -s option, add ~/Library/Developer/Xcode/iOS DeviceSupport to be deleted. 
refreshXcode -s 
# dry-run
refreshXcode -n
# help
refreshXcode -h
```

# INSTALL

```bash
brew tap takkumattsu/homebrew-refreshXcode
brew install refreshXcode
```
