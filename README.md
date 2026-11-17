# ASCII art-banners
Generate an ASCII Art-like banner on the fly.

## Introduction
A Windows Powershell script that takes as input a string
and writes the ASCII Art-like banner in a unique file.

The PowerShell script simply walks the input string character-by-character

- gets the hex value of the character, example `M = 0x4D`.
- reads the assiciated file "ascii_XX.txt", example `ascii_4D.txt`.
- concattenates each line of that "ascii_XX.txt" to the appropriate entry
of an internal array.

When all characters of the input string are processed, the whole internal array
is written to the unique output file.


The ASCII Art-like characters where generated using 
[Text to ASCII Art Generator](https://patorjk.com/software/taag) 
by Patrick Gillespie. The used style was "Colossal".

## How to use.
Simplest way to start is clone all the files into one folder. Then open a Windows
Terminal PowerShell session.

At the commandline enter: `.\ascii_banner.ps1 "Hello World!"`

Look for a new created file like `ascii_banner_yyyyMMdd_HHmmssff.txt` where the
`yyyyMMdd_HHmmssff` is the current system time.

The file `verify_ascii_XX_files.ps1` lists all characters in batches to 
individual files, each covering a character range:
- `0x20 - 0x2f`
- `0x30 - 0x3f`
- `0x40 - 0x4f`
- `0x50 - 0x5f`
- `0x60 - 0x6f`
- `0x70 - 0x7e`

## Limitations
Most important is that only the ASCII characters 0x20 (space) thru 0x7E (tilde) can be used.
Character `0x7F` is `DEL` and the characters `0x00` thru `0x1F` are non-printables.

If a character outside the valid range is used, or an `ascii_XX.txt` file is not found,
the `ascii_unknown.txt` character is printed and a warning message is issued.

All available character are in the file `ascii_art_characters_0x20-0x7e.txt`.

## Improvements
You may want to put the individual `ascii_XX.txt` files in a separate `data` folder
and the PowerShell scripts in a common `bin` folder that is in your PATH.

# How it was made?

Haha, most work was getting the ASCII art-characters in the `ascii_XX.text` files. The 
PowerShell script `ascii_banner.ps1` was originally generated using Copilot. I made
a few alterations.