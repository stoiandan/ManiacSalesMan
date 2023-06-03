# ManiacSalesMan
Watchdog that announces you when there are merchandises on your favorite website


## Description

The script runs in the background, downloads a page and checks for some keywords to inform you if a merchendise is avlailble or not.
It currently works for macOS and _FreeBSD_, or any Unix-like OS that uses _launchd_ and, optionaly _Apple Script_.
But the main script is POSIX compliant and I plan to add support for cron to make it Linux compatible (and maybe GTK to display a dialog). 

## Uninstall

To uninstall the program, just run:

```sh
rm -rf ~/Library/Application\ Support\local.dan.maniacSalesMan/ && rm -rf ~/Library/LaunchAgents/local.dan.maniacSalesMan.plist
```
