# Paper Cleanup

This repo organizes several useful tools which I use to prepare my papers for submission to arXiv and ACL conferences.

## Tools

- [Rebiber](https://github.com/yuchenlin/rebiber): Replaces citations to arXiv papers with their published versions, if they exists.
- [arXiv LaTex Cleaner](https://github.com/google-research/arxiv-latex-cleaner): Clean the LaTex code of a paper before submission to arXiv.
- [ACL Pubcheck](https://github.com/acl-org/aclpubcheck/blob/main/aclpubcheck_additional_info.pdf): Automatically detects font errors, author formatting errors, margin violations as well as many other common formatting errors in papers that are using the LaTeX sty file associated with ACL venues.

## Usage

First, make sure to create and activate a virtual enviornment. My preffered way to do this is with [`pyenv-virtualenv`](https://github.com/pyenv/pyenv-virtualenv), e.g.

```bash
pyenv virtualenv 3.8.13 paper-cleaner
```

First, run `setup.sh`, which will install the tools (or update them if they are already installed)

```bash
./setup.sh  # or bash setup.sh
```

Then, you can run all tools using the `clean.sh` script:

```bash
./clean.sh "path/to/latex" "name_of_bib_file"  # or bash clean.sh "path/to/latex" "name_of_bib_file"
```

Your cleaned paper and bib file will be saved to `"path/to/latex_arxiv"`. Be sure to check the logs for errors. If you additionally want to run `aclpubcheck`, convert your paper to a PDF and run:

```bash
python aclpubcheck/formatchecker.py --paper_type PAPER_TYPE PAPER_NAME.pdf
```

## Notes, tips and tricks

- arXiv requires that the `.bbl` file is provided and has the same name as the main `.tex` file. You can get this file on Overleaf from under "Logs and output files" > "Other logs and files".