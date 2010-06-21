set r to display dialog "Do you want to install ___PROJECTNAME___?" buttons {"Cancel", "Install"} default button "Install"

repeat while mailIsRunning()
	display dialog "Please quit Mail.app before continuing." buttons {"Cancel", "Continue"}
end repeat

try
	do shell script "defaults write com.apple.mail EnableBundles -bool true"
	do shell script "defaults write com.apple.mail BundleCompatibilityVersion -int 4"
	do shell script "install -d " & getDest()
	do shell script "cp -a " & getDmgPath() & "*.mailbundle " & getDest()
	display alert "Installation completed." buttons {"OK"}
on error
	display dialog "Error during installation." buttons {"OK"}
end try


on getDest()
	return "~/Library/Mail/Bundles"
end getDest

on getDmgPath()
	tell application "Finder" to set r to container of (path to me) as text
	return quoted form of POSIX path of r
end getDmgPath

on mailIsRunning()
	tell application "System Events" to set r to exists (processes where name is "Mail")
	return r
end mailIsRunning
