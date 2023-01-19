# dmenu-emoji

A simple script to search for emojis and copy them to the clipboard.

## Installation

### Arch Linux

`dmenu-emoji` is available in the AUR as [`dmenu-emoji`](https://aur.archlinux.org/packages/dmenu-emoji).

```bash
yay -S dmenu-emoji
```

### Other Linux distributions

You can install `dmenu-emoji` from source:

```bash
git clone https://github.com/shasherazi/dmenu-emoji.git
cd dmenuEmoji
chmod +x dmenu-emoji
sudo cp dmenu-emoji /usr/bin/
```

## Dependencies

- `dmenu` or any dmenu like program (`rofi`, `bemenu`, etc.)
- `xclip` for copying to the clipboard

## Usage

`dmenu-emoji` just prints the emoji to stdout. You can pipe it to any `dmenu` like program and do whatever you want with it.

For example, you can bind a keyboard shortcut to use `dmenu` to select an emoji and copy it to the clipboard:

```bash
dmenu-emoji | dmenu -i -l 10 | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
```

Or you can use `rofi` to select an emoji and copy it to the clipboard:

```bash
dmenu-emoji | rofi -dmenu -i -p "Emoji" | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
```

## Contributing

Contributions are welcome! (Maybe make packages for other distros?)
Please open an issue or a pull request.
