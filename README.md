[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-orange.json)](https://github.com/copier-org/copier)

# uv-tool-min-copier

Minimum copier template for a python script to be `uv tool install`ed.

This template is meant to be used with [uv](https://docs.astral.sh/uv/).


## Usage

If you haven't installed `copier` yet, install it by:
```bash
uv tool install copier
```

then, run:

```bash
copier copy gh:kj-9/uv-tool-min-copier your-tool-dir
```

this will prompt you to fill in some values.
If you answer Yes to the question ` Do you want to use Click for command line interface?`, copier generates a `main.py` script with a basic [click](https://click.palletsprojects.com/en/8.1.x/) command line interface.


After filling in the values, copier generates minimum files:
```
create  .gitignore
create  main.py
create  pyproject.toml
```

where: 
- `main.py` is a your python script to be installed as a tool
- `pyproject.toml` is a configuration file for `uv` to install your `main.py` script as a tool
- `.gitignore` is a gitignore file in case you want to manage your tool with git.


### Install your tool script

You can run `uv tool install` specifying the local path to the tool directory:
```
uv tool install ./your-tool-dir -e
```
where `-e` option is for editable install.


You can even upload `main.py and `pyproject.toml` to a gist to share your tool with others.
with [gh](https://cli.github.com/) installed, you can do it like:
```
# create gist
cd your-tool-dir
gh gist create main.py pyproject.toml --description "your tool description"
# prints created gist url

# install the tool from gist
uv tool install https://gist.github.com/{github-username}/{gist-id} # paste printed gist url
```

you can also list gist id by `gh gist list` command.
