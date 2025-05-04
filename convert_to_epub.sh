#!/bin/bash

for i in {1..16}
do
  # Define the URL
  URL="https://meca.ues21.edu.ar/canvas/0GRADO1A23/sociologiadelosmediosdecomunicacionsocial/L$i/index.html"

  # Extract the subject name from the URL path
  SUBJECT=$(echo "$URL" | cut -d'/' -f6)


  # Define filename (no directory conflict)
  OUTPUT_FILE="${SUBJECT}_L$i.epub"

  # Create a temporary directory for this chapter
  mkdir -p "tmp_L$i"

  # Download HTML to that directory
  curl -s -o "tmp_L$i/index.html" "$URL"

  # Convert to EPUB with proper title and output filename
  pandoc "tmp_L$i/index.html" \
    -o "$OUTPUT_FILE" \
    --metadata title="${SUBJECT} - L$i" \
    --css=custom.css

  # Optional: clean up
  rm -r "tmp_L$i"
done
