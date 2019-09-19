
mktoc () { # markdown.md as arg1
# create a github markdown table of contents
# eg
# . mktoc.sh && mktoc resource.md >> resource.md
# edit TOC at bottom of file into top and push to github
# MVP 
    md="$1"
    echo "---"
    echo "__Table of Contents__"
    grep '^#' "$md" | while read h; do
        name="$(echo "$h" | sed -e 's/#//g' -e 's/^[ ]*//' -e 's/[ ]*$//' )" 
        link="$(echo "$name" | sed -e 's/ //g')"
        level="$(echo "$h" |sed -e 's/^[^ ]* /&%/' -e 's/%.*//' -e 's/#/  /g' -e 's/^   //' )"
        echo "${level}* [${name}](${md}#${link})"
        done
    echo "---"
    }
