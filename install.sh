#!/usr/bin/env bash
exec salt-call --local --file-root=./states state.highstate
