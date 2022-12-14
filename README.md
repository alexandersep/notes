# notes
Markdown to LaTeX pdf script converter using pandoc \
It's main purpose is to compile singular or multiple markdown files to pdf \
This allows for quick note taking and in future note reading 

## Usage
1. Give yourself executing permission via `chmod +x notes`
2. Consider installing this script into `/usr/local/bin`
3. Autocompletion functionality (Optional) 
    1. Change the NOTES\_DIR in `autocomplete.sh` to fit you, then
       edit your `~/.bashrc` file and add source your autocomplete script
       Give the location of this github repo, in my case I put `source ~/Documents/gits/notes/autocomplete.sh`, 
       save and exit the `~/.bashrc` file
    2. Source your `~/.bashrc` file using `source ~/.bashrc` 
    3. Autcompletion for -w, -r, -p, -O flags only work when you are inside your year/sem/directory folders
    4. Autcompletion relies on user to type commands in, if pasting a command, then autocompletion will not work
```
Usage:
    notes  [-y <year>] [-s <semester>] [-d <directory>] [-l] [-w] [-r] [-p <pdf name> &| -o] [-O <pdf name>]
    notes  -h | -v | -l | -e

Options:
    -y enter year of course e.g. Year3 
    -s enter semester of course e.g. Sem1
    -d use directory within NOTES_DIR or absoulte directory to compile pdf
    -p name of pdf (with extension) 
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
    All markdown files will be sorted based on "> Date: dd-mm-yyyy \" which 
    is expected to be somewhere in the file. This will be later used to compile to LaTeX
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
