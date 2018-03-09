# refreshXcode

refreshXcode is a script to delete Xcode's cache.

- ~/Library/Developer/Xcode/DerivedData
- ~/Library/Developer/Xcode/iOS DeviceSupport
- ~/Library/Developer/Xcode/Archives

![cap](https://user-images.githubusercontent.com/3356758/37102109-76ed35b8-226a-11e8-9609-9ca69bb796f8.gif)

# USAGE

```bash
# The default behavior is to delete ~/Library/Developer/Xcode/DerivedData.
refreshXcode
# dry-run
refreshXcode -n
# help
refreshXcode -h
```

```bash
# If you add -s option, add ~/Library/Developer/Xcode/iOS DeviceSupport to be deleted. 
refreshXcode -s 
# If you add -b option, add ~/Library/Developer/Xcode/Archives to be deleted. 
refreshXcode -b 
# Both
refreshXcode -sb
```

# INSTALL

```bash
brew tap takkumattsu/homebrew-refreshXcode
brew install refreshXcode
```
