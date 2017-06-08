# Gem2deb-Bundler-Demo

This demo gem shows how to build a Debian package (using `gem2deb`) that
includes its dependencies in a bundle managed by `bundler`, to avoid relying on
external distribution packages.
The whole process is documented as a sequence of git commits.

The major bits are:
  * in debian/rules:
    + the call to `bundler install --standalone`
    + the installation of the bundle dir in the filesystem
  * in exe/gem2deb-bundler-demo:
    + the addition of the bundle location to $LOAD_PATH

## Building a Debian package (with its bundle) from this repository

Make sure you have the required dependencies to build Debian packages:

    $ sudo apt-get install -y --no-install-recommends build-essential devscripts

And the build-dependencies for this package:

    $ sudo apt-get install -y gem2deb bundler

Note that if you are using Debian 8 Jessie, you need the version of gem2deb
from jessie-backports.

Then, you can try to build the package:

    $ dpkg-buildpackage

If this fails, you might need to install additional build-dependencies:

    $ apt-get install -y git ruby-dev ruby-colorize ruby-ffi

Or:

    $ mk-build-deps -i

When it will have built successfully, you can check the content of the package with:

    $ debc

Enjoy!

## Limitations

Given that the Ruby interpreter version is hardcoded in the paths of the
bundle, you need to build the Debian package on the same version of the
distribution as the target system.

## Author

Lucas Nussbaum <lucas@debian.org>

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

