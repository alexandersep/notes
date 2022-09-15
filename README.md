# notes
Markdown to LaTeX pdf script converter using pandoc \
It's main purpose is to compile singular or multiple markdown files to pdf \
This allows for quick note taking and in future note reading 

## Usage
1. Give yourself executing permission via `chmod +x notes`
2. Consider installing this script into `/usr/local/bin`
3. For autocompletion using notes script, Change the NOTES_DIR to fit you, then
   copy the `autocomplete.sh` file into `/etc/bash_completion.sh`
4. Enter `/etc/bassh_completion.sh` and source it with `source autocompletion.sh`
```
Usage:
    notes  [-y <year>] [-s <semester>] [-d <directory>] [-l] [-w] [-r] [-p <pdf name> &| -o] [-O <pdf name>]
    notes  -h | -v | -l | -e

Options:
    -y enter year of course e.g. Year3 
    -s enter semester of course e.g. Sem1
    -d use directory within NOTES_DIR or absoulte directory to compile pdf
    -p name of pdf (without extension .pdf) 
    -o open newely created pdf
    -O open pdf
    -w Write a markdown file, if file exists will open file
    -r Remove a file (with extension)
    -h print helptext
    -v print version 
    -l list current directory 
    -e output examples on how to run programme 
    
Notes:
    Make sure to change the NOTES_DIR variable to suit your directory
    All markdown files will be sorted based on "> Date dd-mm-yyyy" which 
    are expected to be somewhere in the file. This will be later used to compile to LaTeX
```
## Dependencies
* Changeable dependencies 
    * zathura
    * vim 
* Hard Dependencies
    * pandoc
    * LaTeX

### Inspiration
* I decided to yet again give an attempt to incorporate vim into my note taking workflow
* I was inspired to create a pandoc script based on this youtube 
[video](https://www.youtube.com/watch?v=wh_WGWii7UE&t=853s) 
* This GitHub repository very loosely referenced this GitHub 
[repo](https://github.com/connermcd/notes/blob/master/notes) 
