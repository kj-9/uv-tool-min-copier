DEMO_DIR ?= generated

.PHONY: demo
demo:
	cat input-for-demo.txt | copier copy --vcs-ref HEAD . $(DEMO_DIR) 

