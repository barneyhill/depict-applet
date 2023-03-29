#!/bin/bash

main() {
    
    dx-mount-all-inputs

    # files will appear in $HOME/in/VAR_NAME/VAR_FILE
        
    sudo apt-get install python2 plink 
    sudo python2 -m pip install pandas intervaltree

    git clone https://github.com/perslab/depict
    python2 depict/src/python/depict.py
	
    # upload files in $HOME/out/VAR_NAME/*
    dx-upload-all-outputs
}
