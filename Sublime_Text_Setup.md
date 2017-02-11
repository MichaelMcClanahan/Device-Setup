# Sublime Text Setup

So you keep hearing that Sublime Text is the best editor ever? Well you're not wrong. This guide will help you get Sublime Text setup so that you can be busting out cookbooks left and right!

- [Steps](#steps)
 - [Install Sublime Text 3](#install-sublime-text-3)
 - [Configure your User Settings](#configure-your-user-settings)
 - [Set up Symlink](#set-up-symlink)
 - [Add Folders to Project](#add-folders-to-project)
- [Additional Customization](#additional-customization)
 - [Install Package Control](#install-package-control)
 - [Install Soda Theme](#install-soda-theme)
 - [Add Bonus Syntax Highlighing Colour Schemes](#add-bonus-syntax-highlighting-colour-schemes)
 - [Update your User Settings](#update-your-user-settings)

# Steps

## Install Sublime Text 3

Go to [Sublime's website] and select the OS X download
- Even though Sublime Text 3 is technically still in Beta, the Beta is stable

## Configure your User Settings

1. Open Sublime Text
2. Open user settings
  - Preferences -> Settings
  - Using hotkey: `Command + ,`
3. Paste the following into the USER settings:

    ```json
    {
      "auto_complete_commit_on_tab": true,
      "auto_complete_delay": 1000,
      "close_windows_when_empty": true,
      "ensure_newline_at_eof_on_save": true,
      "font_size": 13,
      "ignored_packages":
      [
        "Vintage"
      ],
      "scroll_past_end": true,
      "tab_size": 2,
      "translate_tabs_to_spaces": true,
      "trim_automatic_white_space": false,
      "trim_trailing_white_space_on_save": true,
      "word_wrap": "enabled"
    }
    ```
4. Save the file

## Set up Symlink

We create this symlink so that you can easily open files on your workstation in Sublime Text

```bash
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```
A way to test this is to run `subl testfile.md` on your local machine. It should open the file in Sublime Text. You can then write whatever you want and save the file. Much easier than `vim`!

## Add Folders to Project

One of the best parts about Sublime Text is that you can add folders as a project. What this means is that you can take a  copy of a cookbook that you have forked to your local machine and edit it within Sublime! Here is an example of how to do this:

1. Create a directory for your cookbooks

    ```bash
    mkdir ~/cookbooks

    cd ~/cookbooks
    ```
2. Clone something from your personal GitHub repository.
  - In this case we use [ets_base_os] which I already have forked to my personal repo

    ```bash
    git clone https://github.cerner.com/$USER/ets_base_os.git
    ```
3. Open Sublime Text
4. Project -> Add Folder to Project
5. Navigate to the directory above your `~/cookbooks` folder and drag and drop the entire `~/cookbooks` folder onto Sublime

You should now see your cookbooks folder on your left-hand toolbar and within it, ets_base_os. You can navigate with that toolbar to open files and make edits. Any edits that you make will be reflected on the actual files after you save them in Sublime. Since you added the entire `~/cookbooks` directory, any new cookbooks you add will automatically show up in Sublime!

----------
----------

# Additional Customization

Everything from here on out is optional but I think it results in a nice setup for cookbook development. I personally use the [Soda Theme] but you can swap it out for any other theme.

## Install Package Control

Package Control makes it easy to install/remove/upgrade Sublime Text packages

1. Go to [Package Control's website]
2. Copy the Python code to your clipboard
3. Open Sublime Text
4. Open the Sublime Text console by pressing `ctrl+``
5. Paste the Python code from your clipboard into the console and then press `Enter`
6. Restart Sublime Text

## Install Soda Theme

1. Open the Command Palette
  - Tools -> Command Palette
  - Using hotkey: `Command + Shift + P`
2. Type in `Package Control: Install Package`
3. Press `Enter`
4. Type in `Theme - Soda`
5. Press `Enter`
6. Restart Sublime Text

## Add Bonus Syntax Highlighing Colour Schemes

1. Navigate to the [Soda Theme] GitHub page and download the additional color schemes listed in the README
  - Or just click here: [colour-schemes.zip]
2. Copy the themes to the Packages User directory

    ```bash
    cp /Users/$USER/Downloads/colour-schemes/* "/Users/$USER/Library/Application Support/Sublime Text 3/Packages/User"
    ```

## Update your User Settings

1. Open Sublime Text
2. Open user settings
  - Preferences -> Settings - User
  - Using hotkey: `Command + ,`
3. Paste the following:

    ```json
    {
      "auto_complete_commit_on_tab": true,
      "auto_complete_delay": 1000,
      "close_windows_when_empty": true,
      "color_scheme": "Packages/User/Monokai Soda.tmTheme",
      "ensure_newline_at_eof_on_save": true,
      "font_size": 13,
      "ignored_packages":
      [
        "Vintage"
      ],
      "line_padding_bottom": 0.5,
      "line_padding_top": 0.5,
      "rulers":
      [
        80,
        100
      ],
      "scroll_past_end": true,
      "soda_classic_tabs": true,
      "soda_folder_icons": true,
      "tab_size": 2,
      "theme": "Soda Light 3.sublime-theme",
      "translate_tabs_to_spaces": true,
      "trim_automatic_white_space": false,
      "trim_trailing_white_space_on_save": true,
      "word_wrap": "enabled"
    }
    ```
4. Save the file

These updated settings do a couple things:

1. Pulls in the [Soda Theme] and updated colour schemes
2. Uses the classic tabs instead of the Soda tabs
3. Changes the folder icons to be folders
4. Adds an 80 and 100 character ruler for [Ruby best practices]

[Sublime's website]: http://www.sublimetext.com/3
[Package Control's website]: https://packagecontrol.io/installation#st3
[Soda Theme]: https://github.com/buymeasoda/soda-theme
[colour-schemes.zip]: http://buymeasoda.github.com/soda-theme/extras/colour-schemes.zip
[ets_base_os]: https://github.cerner.com/ETS/ets_base_os
[Ruby best practices]: http://batsov.com/articles/2013/06/26/the-elements-of-style-in-ruby-number-1-maximum-line-length/
