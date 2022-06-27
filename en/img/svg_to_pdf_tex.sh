#!/bin/bash

ARGS="-D --export-latex --export-type=pdf --export-pdf-version=1.5"

if [[ $# -gt 0 ]]
then
    for FILE in "$@"
    do
	FULL_PATH="$(realpath "${FILE}")"
        inkscape $ARGS "${FULL_PATH}"
    done
else
    for FILE in *.svg
    do
	FULL_PATH="$(realpath "${FILE}")"
        inkscape $ARGS "${FULL_PATH}"
    done
fi
