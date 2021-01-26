#!/usr/bin/env bash

printf 'EN DEUX-MIL-UN, LES PATRONS DE LEADER PRICE FAISAIENT CACA DANS DES RAVIOLIS. ÇA VOUS VA ?\n'
mkdir -p ${HOME}/.Trash/ChromeUninstallation
killall Google\ Chrome
mv /Applications/Google\ Chrome.app ${HOME}/.Trash/ChromeUninstallation/
mv ${HOME}/Library/Google ${HOME}/.Trash/ChromeUninstallation/
mv ${HOME}/Library/Application\ Support/Google ${HOME}/.Trash/ChromeUninstallation/
mv ${HOME}/Library/Preferences/com.google.Chrome.plist ${HOME}/.Trash/ChromeUninstallation/
mv ${HOME}/Library/WebKit/com.google.Chrome ${HOME}/.Trash/ChromeUninstallation

printf 'Delete the uninstallation files, yes or no?\n'
read -r input
if [[ ${input} =~ ^([yY]|[yY][eE][sS])$ ]]
then
	wd=$(pwd)
	cd ${HOME}/.Trash
	rm -rf ChromeUninstallation
	cd ${wd}
elif [[ ${input} =~ ^([nN]|[nN][oO])$ ]]
then
	:
else
	printf 'Qui ne dit mot consent ? Pas de nouvelle, bonnes nouvelles ?\n'
fi
printf 'Chrome has been uninstalled.\n'

# UninstallChrome.sh
# Uninstall (Google) Chrome
# https://web.archive.org/web/20190502195205/https://support.google.com/chrome/answer/95319
# Cf https://web.archive.org/web/20190623112911/https://support.google.com/chrome/answer/95319?co=GENIE.Platform%3DDesktop&hl=en, 
# 	https://web.archive.org/web/20190623113103/https://crunchify.com/how-to-purge-all-your-google-chrome-user-data-on-mac-os-x/, 
# 	https://web.archive.org/web/20190623113126/https://superuser.com/questions/318186/how-do-i-uninstall-google-chrome-completely-from-my-mac & 
# 	/usr/bin/find
# 
# Karl V. P. Bertin `kvpb`
# Telephone: +33 A BB BB BB BB
# Email: local-part@domain
# 
# Alrighty guys, the party's over! Back in the days, when Firefox went downhill, Chrome soon arose with a better UX, pretty much like everything Google tried between '07 and '12. It never was clean from the start, but the terms were... Acceptable. At that time, in an Internet that wasn't bloated with JavaShit and all that crap, privacy and security weren't much of a concern for most. Coincidentally, there weren't enough reasons, both quantitatively and qualitatively, to care about this more than just not giving away private info and passwords on Internet. We knew Google was a spyware, but it was still fair--- for some of your activity that didn't matter much and targeted ads, you got powerful tools. Then Google became Google. The Chrome we called a spyware back then was jackshit next to what data breach it's now. Since 2013, 'everything Google' started to get less and less efficient, invading more and more, doing things though it was explicitely told not to do. The search engine, which nailed it 95.00% of the time before 2012, became a pain in the ass to fill with minus signs for the lesser specific search. Chrome started getting more and more updated sooner and sooner, and the software became buggy, heavy, energyvorous and huge. YouTube, which's UI was great only for the short period it was good from 2010 to 2012, became a freaking advertising company with scripts and ads eating half of the ressources that were used, a junkyard which wants the original, the weird, the subversive, the most interesting content creators out of its platform. Android got its first true UX at version 5.0, and then it slowly degraded to a joke-tier obscene spyware more and more restrictive and more intrusive than Chrome. Aside from that, whatever Google took control of was wasted. remember Sparrow? But just look at YouTube!, for fuck's sake! All in all, it's better to stay away from Google. They went from 'Don't be evil' to the devil incarnate. Recently, right after I missed something important because of Google, I decided to trash all their garbage for good. While checking up on my data, I discovered two things which nailed the coffin. First, they wrote a purchase history from the receipts in my Gmail account; I never even heard of it in the first place. Second, despite being explicitely set not to do it and deleting its results multiple times three years ago, Google had leeched my calendar from an Xperia Z3+ I owned; on it, I only ever launched Sony's built-in Calendar app instead, and it was always set to save everything locally. This mess went outta control. I quit this fake innovation bullshit, starting by throwing away Google, Facebook, Dropbox, Adobe and more everyday.
# 	Get really careful about what you pick, my dudes. Prefer a bit of annoyance over too much comfort. I'd go through the 'hassle' of building a setup and automating it as needed rather than depend on implemented ecosystems centralizing everything. For example, I use Apple hardware because it's still some of the only stuff that works as it should, but I never ever used iCloud except for WhatsApp backups which require it. Well, you see, I don't feel like Apple added anything in both macOS and iOS. Why is that? Because most of their new features, like the thing to take a call from another device, require iCloud. Since I don't use this, I don't get to even be introduced to these features. And so I just cannot see where's the innovation in macOS. All I see is that they add layers of fake security and 1984ize the Macintosh they introduced at the Super Bowl. Everyone laughed at me as I stood firm against GateKeeper when OS X Mountain Lion was released. I said it would become more and more restrictive for nothing, that they'd invoke reasons that wouldn't matter if they secured their stuff well in the first place. I was told I was getting paranoid. Fair enough. I just shut up, then. Today, GateKeeper prevents launching a lot of software, requiring either clicking on a button in the settings everytime or both entering a command line, out of range for basic users, then again after each update. And then came rootless, which must be disabled from another partition. The SIP is not about protecting the user from a corrupt OS; it's about protecting a DRMized OS from its user. When I said that, the same people laughed. Apple's been removing more and more GNU packages from macOS, especially those which since went under the GPLv3 license. And look at what they did with macOS Catalina. The OS is read-only. Besides, it's now iOS-compatible. And Apple doesn't want anyone to hack through their DRM in iOS. Combine macOS Catalina, the SIP and GateKeeper altogether, and you've got quite a base for a macOS 1984. And believe it or not: it's only gonna get worse. Bother with jailbreaking your Mac if you will--- I'm going free.
