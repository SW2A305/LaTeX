#!/bin/bash
sh delete_junk.sh
rm -f *.synctex.gz
echo "Deleting PDF too!"
rm -f *.pdf
echo "Boom! Gone!!"