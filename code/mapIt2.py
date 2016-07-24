#! python3
#mapIt.py - launches a map in the brower using an address from the
#command line or clipboard

import webbrowser, sys, pyperclip
if len(sys.argv) > 1:
    #Get address from command line.
    address = ' ' .join(sys.argv[1:])

else:
    #Get address from clipboard.
    address = pyperclip.paste()

webbrowser.open('https:https://www.google.com/maps/place/' + address)
