# Typst package/custom assets
This repository is a collection of Typst code, assets and templates I intent to use in my projects.

## MANIFESTO
The repository is mean to be use by my, I do not expect anyone to use it and this is why its documentation will be oriented to my use. 

I still make the repository public to have access without my account and for the template to be help for someone if the case is given.

Don't pretent it to be a well-implemented package, it isn't.

## USE
This repository is meant to live inside another directory. 

### Init
1. Make the folder `./my_typst/` inside your project dict.
2. Inside it, open and clone the git repo & Sync with GitHub
3. You are not able to edit this repo for concrete use. Use it as a library.
  - If I need to make it more general, just make it in a way all the repos can work in the same way
  - If I want to add future, make sure for committing the changes in this subdirectory.
4. In your project main files add `#import "my_typst/init" as my_typst`

### Templates
Files in `./templates` and code in `./example_blocks` are meant to be copied outside the repository into your project. Use the template you wish and change it to be your `main.typ` file. 

## STRUCTURE
- `package/` contains the imported typst modules for `init.typ`
- `assets/` contains the needed assets for the package
  - Do not add example assets
- `templates` contains typst main files for you to copy in your project and use. As examples.
- `example_blocks` contains some useful typst code to copy and use in your project. As examples.
