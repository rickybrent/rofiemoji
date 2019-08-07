# Rofiemoji

A small fork of https://github.com/nkoehring/rofiemoji that copies the formatting (and emoji list with with tags) from https://github.com/mange/rofi-emoji.

Compared to the former, you can type "grin" and get the beaming face, while compared to the later, it's a script instead of a C plugin.

The list of emojis is automatically downloaded and formated when used for the first time. 

## Prerequisites

 * An emoji capable font, for example [Noto Emoji](https://www.google.com/get/noto/#emoji-zsye) or [Noto Color Emoji](https://www.google.com/get/noto/#emoji-zsye-color).
 * xsel to copy the selection to the clipboard. You should find it in your package manager.

## Usage Example
```sh
rofi -modi 'run,drun,emoji:/path/to/rofimoji/rofimoji.sh' -show emoji
```

`Enter` copies the selected emoji into the clipboard. Requires [xsel](https://linux.die.net/man/1/xsel) to work.

## Screenshot

![screenshot](https://raw.githubusercontent.com/rickybrent/rofiemoji/master/rofiemoji.jpg)


