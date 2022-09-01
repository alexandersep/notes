# notes
Markdown to LaTeX pdf script convertor using pandoc \
It's main purpose is to compile singular or multiple markdown files to pdf \
This allows for quick note taking and in future note reading 

## Usage
Give yourself executing permission via `chmod +x notes` \
Consider installing this script into `/usr/local/bin`
```
Usage:
    notes [-y <year>] [-d <directory>] [-l] [-p <pdf name>]
    notes -h | -v | -l 

Usage:
    notes  [-y <year>] [-s <semester>] [-d <directory>] [-l] [-p <pdf name> &| -o]
    notes  -h | -v | -l | -e

Options:
    -y enter year of course in NOTES_DIR e.g. -y 3
    -s enter semester of course, may only be 1 or 2 if out of range, flag ignored
    -d use directory within NOTES_DIR or absoulte directory to compile pdf
    -p name of pdf (without extension .pdf)
    -o open newely created pdf
    -h print helptext
    -v print version
    -l list current directory
    -e output examples on how to run programme

Notes:
    Make sure to change the NOTES_DIR variable to suit your directory
    All markdown files will be sorted based on "> Date dd-mm-yyyy" which
    are expected to be somewhere in the file that will be later compiled to LaTeX
```

## Dependencies
* pandoc
* LaTeX
* zathura

### Inspiration
* I decided to yet again give an attempt to incorporate vim into my note taking workflow
* I was inspired to create a pandoc script based on this youtube 
[video](https://www.youtube.com/watch?v=wh_WGWii7UE&t=853s) 
* This github repository very loosely referenced this github 
[repo](https://github.com/connermcd/notes/blob/master/notes) 
