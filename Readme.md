MailBundle Template
===================

This is an Xcode template for Mail.app plugins (mailbundles).
The resulting mailbundles work on Snow Leopard (up to 10.6.4, both 32 and 64 bits).


Installation:
-------------
- Download and extract the template.
- Move the entire folder to `/Developer/Library/Xcode/Project Templates/Application Plug-In/`.
- Create a new Xcode project based on this template.

Notes:
------
To enable MailBundles on Snow Leopard, execute:

- `defaults write com.apple.mail EnableBundles -bool true`
- `defaults write com.apple.mail BundleCompatibilityVersion -int 4`


Todo:
-----
- Default swizzling stuff
- Installer
- Automatic DMG creation
