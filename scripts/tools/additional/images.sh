echo
echo "Installing image and document tools"

brew install imagemagick                        # convert and resize
brew install pngquant                           # lossy png compression
brew install exiftool                           # read and strip metadata
brew install librsvg                            # svg rendering
brew install jpeg-xl
brew install tesseract                          # OCR

# PDFs
brew install qpdf
brew install poppler

# GUI editor
brew install --cask gimp
