My OS HomeDir
=============

My configration files and scripts

## Directory structure
    - dotfiles
      Files for specific OS or VM
      - ${specfic_OS_or_VM}
    - scripts
      - setup
        Scripts to initialize the system
        - ${specfic_OS_or_VM}
## Usage
    - Copy dot files in `dofiles/on_${specfic_OS_or_VM}` under home dir
      - or create symbolic links to link to the files, if you want to update 
        the file on the github also
      - note that using `ls -a` to check the hidden dot files
    - Go to sub-directory under `scripts` for your goal and execute the scripts 

## Future work
    - automatically detect the system and do the steps in **Usage**
