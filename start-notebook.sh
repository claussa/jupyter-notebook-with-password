#!/bin/bash
# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

set -e

wrapper=""
if [[ "${RESTARTABLE}" == "yes" ]]; then
    wrapper="run-one-constantly"
fi

PASSWORD_HASH=$(python -c "from notebook import auth; print(auth.passwd('$2'))")

. /usr/local/bin/start.sh $wrapper jupyter notebook --NotebookApp.password="${PASSWORD_HASH}"
