#!/usr/bin/env bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $script_dir/external/libshellscript/libshellscript/libshellscript.sh

latex_templates_dir="$HOME/.local/share/latex-templates"
local_script_dir="$HOME/.local/bin"

install -d $local_script_dir
install -d $latex_templates_dir

safe_install $script_dir/templates/Makefile $latex_templates_dir
safe_install $script_dir/templates/Makefile-assets $latex_templates_dir
safe_install $script_dir/templates/gitignore $latex_templates_dir
safe_install $script_dir/templates/latexmkrc $latex_templates_dir
safe_install $script_dir/templates/mystylefile.sty $latex_templates_dir
safe_install $script_dir/templates/report.tex $latex_templates_dir
safe_install $script_dir/templates/slide.tex $latex_templates_dir

safe_install $script_dir/scripts/latex-template $local_script_dir 755
safe_install $script_dir/scripts/latexmk-server $local_script_dir 755
