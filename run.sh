#!/bin/bash

echo "Cloning the repository..."
sh scripts/clone.sh

echo "Generating appstream data..."
sh scripts/do_stream.sh

echo "Packing up..."
sh scripts/publish.sh
