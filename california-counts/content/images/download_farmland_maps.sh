#!/bin/bash
# Downloads static before/after farmland map images from the CA Dept. of Conservation
# FMMP ArcGIS MapServer. Run this script from the images/ directory.
#
# Usage:  cd california-counts/content/images && bash download_farmland_maps.sh

BBOX="-13862000,3833000,-12680000,5162000"
SR="3857"
SIZE="800,900"

for YEAR in 1984 2022; do
  echo "Downloading farmland map for ${YEAR}..."
  curl -sL -o "farmland_${YEAR}.png" \
    "https://gis.conservation.ca.gov/server/rest/services/DLRP/CaliforniaImportantFarmland_${YEAR}/MapServer/export?bbox=${BBOX}&bboxSR=${SR}&imageSR=${SR}&size=${SIZE}&format=png&transparent=false&f=image"
  echo "  Saved farmland_${YEAR}.png ($(du -h "farmland_${YEAR}.png" | cut -f1))"
done

echo "Done! Check the images look correct before committing."
