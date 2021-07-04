My OS HomeDir
=============

My configration files and scripts

## Directory structure
    - on_${specfic_OS_or_VM}
      files for specific OS or VM
    - scripts
      - setup
        scripts to initialize the system
    - others
      the files can be used across different OS

## Usage
    - copy files in `on_${specfic_OS_or_VM}` and dot files to home dir
      if there has match with the system
    - execute preferred scripts in `scripts`

## Future work
    - automatically detect the system and do the steps in **Usage**
