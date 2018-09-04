# Dotfiles

My personal collection of configuration files.  

These are specifically for used with the bash shell in the macOS Terminal 
application, there may be issues using this in other environments.

## Set up

Copy or symlink the '.' prefixed files in this repository into your home 
directory, assuming you are using a Unix-like OS.

To install the homebrew packages, ensure that brew.sh is executable 
(`chmod +x brew.sh`) and install the my\_brew.txt list of programs with 
`./brew.sh`

To install the gistpush script, copy it over to /usr/local/bin/ to put it with 
other bash commands.

Some of these files are configured specifically for me, so have `<usernames>`, 
`<password>`, etc. fields that would need to updated with personal 
information.  Just search the files for `<any_text>` and fill in depending on 
the label.  

A non-exhaustive list of these depending on how recently updated the README is:  
- `.irssi/config`
- `.gitconfig` 
- `gistpush`
