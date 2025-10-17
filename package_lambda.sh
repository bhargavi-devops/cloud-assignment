#!/bin/bash
set -e
WORKDIR="$(pwd)"
SRC_DIR="${WORKDIR}/src/processor"
OUT_ZIP="${WORKDIR}/infra/lambda/lambda.zip"
rm -f "${OUT_ZIP}"
cd "${SRC_DIR}"
mkdir -p build
pip install --target build -r requirements.txt
cp lambda_handler.py build/
cd build
zip -r "${OUT_ZIP}" .
echo "Packaged lambda into ${OUT_ZIP}"
