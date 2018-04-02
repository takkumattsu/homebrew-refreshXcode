require "formula"

# This is a non-functional example formula to showcase all features and
# therefore, it's overly complex and dupes stuff just to comment on it.
# You may want to use `brew create` to start your own new formula!
# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md

## Naming -- Every Homebrew formula is a class of the type `Formula`.
# Ruby classes have to start Upper case and dashes are not allowed.
# So we transform: `example-formula.rb` into `ExampleFormula`. Further,
# Homebrew does enforce that the name of the file and the class correspond.
# Check with `brew search` that the name is free.

class Refreshxcode < Formula
  homepage "http://github.com/takkumattsu/homebrew-refreshXcode.git" # used by `brew home example-formula`.

  # The url of the archive. Prefer https (security and proxy issues):
  url "http://github.com/takkumattsu/homebrew-refreshXcode.git"

  # For integrity and security, we verify the hash (`openssl dgst -sha1 <FILE>`)
  # You may also use sha256 if the software uses sha256 on their homepage.
  # Leave it empty at first and `brew install` will tell you the expected.
  sha256 "5642bd054e706eebfb284e3f82211fc088b63dda"
  version "1.7.4"

  def install
    bin.install "bin/refreshXcode"
  end
  def caveats
    <<~EOF
    Usage: refreshXcode [OPTION]

    The default behavior is to delete the following directories.
     ~/Library/Developer/Xcode/DerivedData
     ~/Library/Developer/Xcode/iOS DeviceSupport
     ~/Library/Developer/Xcode/Archives
    
    You can also delete them individually by specifying options.
    
    e.g.
    
    Only ~/Library/Developer/Xcode/DerivedData
    $ refreshXcode -D
    
    ~/Library/Developer/Xcode/DerivedData and ~/Library/Developer/Xcode/Archives
    $ refreshXcode -DA
    
    OPTION
    -D		If you add -D option, you will delete ~/Library/Developer/Xcode/DerivedData.
    -i		If you add -i option, you will delete ~/Library/Developer/Xcode/iOS DeviceSupport.
    -A		If you add -A option, you will delete ~/Library/Developer/Xcode/Archives.
    -h, --help      show help
        --version   show version
    -n, --dry-run   display the size to be deleted
    EOF
  end

end

__END__
# Room for a patch after the `__END__`
# Read about how to get a patch in here:
#    https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
# In short, `brew install --interactive --git <formula>` and make your edits.
# Then `git diff >> path/to/your/formula.rb`
# Note, that HOMEBREW_PREFIX will be replaced in the path before it is
# applied. A patch can consit of several hunks.
