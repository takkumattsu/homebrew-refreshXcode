# refreshXcode

refreshXcode is a script to delete Xcode's cache.

- ~/Library/Developer/Xcode/DerivedData
- ~/Library/Developer/Xcode/iOS DeviceSupport
- ~/Library/Developer/Xcode/Archives

![cap](https://user-images.githubusercontent.com/3356758/37200039-eadb8da0-23c6-11e8-857f-d66487eb2405.gif)

# INSTALL

```bash
brew tap takkumattsu/homebrew-refreshXcode
brew install refreshXcode
```

# USAGE

```bash
# The default behavior is to delete the following directories.
#  ~/Library/Developer/Xcode/DerivedData
#  ~/Library/Developer/Xcode/iOS DeviceSupport
#  ~/Library/Developer/Xcode/Archives
refreshXcode
```

## dry-run

```bash
# dry-run
refreshXcode -n
# or
refreshXcode --dry-run
```

## help

```bash
# help
refreshXcode -h
# or
refreshXcode --help
```

## You can also delete them individually by specifying options.

### If you add -d option, add ~/Library/Developer/Xcode/DerivedData to be deleted.
```bash
# Delete ~/Library/Developer/Xcode/DerivedData
refreshXcode -d
```

### If you add -s option, add ~/Library/Developer/Xcode/iOS DeviceSupport to be deleted. 
```bash
# Delete ~/Library/Developer/Xcode/iOS DeviceSupport
refreshXcode -s 
```
### If you add -b option, add ~/Library/Developer/Xcode/Archives to be deleted. 

```bash
# Delete ~/Library/Developer/Xcode/Archives
refreshXcode -b
```
### Multiple options can also be specified.

```bash
# Delete ~/Library/Developer/Xcode/iOS DeviceSupport and ~/Library/Developer/Xcode/Archives
refreshXcode -sb
```
