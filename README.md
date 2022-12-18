# :scroll: Paper Cleanup

This repo organizes a workflow for cleaning LaTeX for paper submissions to arXiv and *ACL conferences.

> This is mainly meant for personal use but feel free to use it if you find it helpful!

## :hammer_and_wrench: Tools

- [Rebiber](https://github.com/yuchenlin/rebiber): Replaces citations to arXiv papers with their published versions if they exist.
- [arXiv LaTeX Cleaner](https://github.com/google-research/arxiv-latex-cleaner): Clean the LaTeX code of a paper before submission to arXiv.
- [ACL Pubcheck](https://github.com/acl-org/aclpubcheck/blob/main/aclpubcheck_additional_info.pdf): Automatically detects font errors, author formatting errors, margin violations as well as many other common formatting errors in papers that are using the LaTeX sty file associated with ACL venues.

## :arrow_forward: Usage

First, make sure to create and activate a virtual environment. My preferred way to do this is with [`pyenv-virtualenv`](https://github.com/pyenv/pyenv-virtualenv), e.g.

```bash
pyenv virtualenv 3.8.13 paper-cleanup
```

Then, clone and `cd` into the repo

```bash
git clone "https://github.com/JohnGiorgi/paper-cleanup.git"
cd paper-cleanup
```

Next, run `setup.sh`, which will install the tools (or update them if they are already installed)

```bash
./scripts/setup.sh  # or bash scripts/setup.sh
```

Then, you can run all tools using the `clean.sh` script:

```bash
./scripts/clean.sh "path/to/latex" "name_of_bib_file"  # or bash scripts/clean.sh "path/to/latex" "name_of_bib_file"
```

Your cleaned paper and bib file will be saved to `"path/to/latex_arxiv"`. Be sure to check the logs for errors. If you additionally want to run `aclpubcheck`, convert your paper to a PDF and run:

```bash
python ./aclpubcheck/aclpubcheck/formatchecker.py --paper_type [long|short|other] path/to/paper.pdf
```

## :memo: Notes, tips and tricks

- arXiv requires that the `.bbl` file is provided and has the same name as the main `.tex` file. You can get this file on Overleaf from under "Logs and output files" > "Other logs and files".
