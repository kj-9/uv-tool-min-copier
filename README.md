# uv-tool-min-copier

Minimum copier template for a python script to be `uv tool install`ed.

## usage

```bash
mkdir your-tool-dir
copier copy gh:kj-9/uv-tool-min-copier your-tool-dir
```

this generates a minimum files for a python script to be `uv tool install`ed.


then, you can `uv tool install` your tool specifying the local path to the tool directory.
```
uv tool install ./your-tool-dir
```
