#!/bin/bash

if [[ $1 == "go" ]]; then
echo "generating vimspector config for golang...."
echo '{
  "configurations": {
    "run": {
      "adapter": "vscode-go",
      "configuration": {
        "request": "launch",
        "program": "${fileDirname}",
        "mode": "debug",
        "dlvToolPath": "$HOME/go/bin/dlv"
      }
    }
  }
}' > .vimspector.json
fi
