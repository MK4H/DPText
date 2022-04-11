#!/bin/bash

ARGS="-D --export-latex --export-type=pdf --export-pdf-version=1.5"

if [[ $# -gt 0 ]]
then
    for FILE in "$@"
    do
        inkscape $ARGS "${FILE}"
    done
else
    for FILE in *.svg
    do
        inkscape $ARGS "${FILE}"
    done
fi