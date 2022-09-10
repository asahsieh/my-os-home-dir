My OS HomeDir
=============

My configration files and scripts

## Directory structure
    - Dotfiles
      Files for specific OS or VM
      - ${specfic_OS_or_VM}
    - Scripts
      A folder contains referenced scripts
    - scripts
      - setup
        Scripts to initialize the system
        - ${specfic_OS_or_VM}
## Usage
    - Copy dot files in `Dofiles/on_${specfic_OS_or_VM}` and `Scripts` to your home dir
      - or create symbolic links to link to the files, if you want to update
        the file on the github also
      - note that using `ls -a` to check the hidden dot files
    - Go to sub-directory under `Scripts` for your goal and execute the scripts

## Future work
    - automatically detect the system and do the steps in **Usage**
