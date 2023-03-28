#!/bin/bash

latex_path="$1"
bib_fn="$2"

rebiber -i "$latex_path/$bib_fn"
arxiv_latex_cleaner "$latex_path" --keep_bib