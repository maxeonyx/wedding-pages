#!/bin/bash

# Wedding Pages Build Script
# This script generates 4 variants of the wedding website by replacing CSS variables and images

echo "🌸 Building wedding website variants..."

# Clean and create output directories
rm -rf public
mkdir -p public/ceremony6pm
mkdir -p public/reception6pm
mkdir -p public/ceremony
mkdir -p public/reception

# Copy styles.css to each directory
cp src/styles.css public/ceremony6pm/styles.css
cp src/styles.css public/reception6pm/styles.css
cp src/styles.css public/ceremony/styles.css
cp src/styles.css public/reception/styles.css

# Copy variant-specific invitation images
cp "src/images/Invitation - Ceremony - 6pm.jpeg" "public/ceremony6pm/invitation.jpeg"
cp "src/images/Invitation - Ceremony - 6pm.jpeg" "public/ceremony/invitation.jpeg"
cp "src/images/Invitation - Reception - 6pm.jpeg" "public/reception6pm/invitation.jpeg"
cp "src/images/Invitation - Reception - 6pm.jpeg" "public/reception/invitation.jpeg"

# Generate variant 1: ceremony6pm/index.html (Ceremony + Reception, Western time - 6pm)
echo "<!-- VARIANT: Full ceremony + reception, 6pm start -->" > public/ceremony6pm/index.html
sed 's/class="ceremony-western"/class="ceremony-western"/' src/index.html >> public/ceremony6pm/index.html

# Generate variant 1a: ceremony/index.html (Primary ceremony link without time in URL)
echo "<!-- VARIANT: Full ceremony + reception (primary link) -->" > public/ceremony/index.html
sed 's/class="ceremony-western"/class="ceremony-western"/' src/index.html >> public/ceremony/index.html

# Generate variant 2: reception6pm/index.html (Reception only, Western time - 6pm)  
echo "<!-- VARIANT: Reception only, 6pm start -->" > public/reception6pm/index.html
sed 's/class="ceremony-western"/class="reception-western"/' src/index.html >> public/reception6pm/index.html

# Generate variant 2a: reception/index.html (Primary reception link without time in URL)
echo "<!-- VARIANT: Reception only (primary link) -->" > public/reception/index.html
sed 's/class="ceremony-western"/class="reception-western"/' src/index.html >> public/reception/index.html

echo "✅ Build complete! Generated ceremony and reception invitations:"
echo "   📁 public/ceremony6pm/        - Legacy ceremony link (with time in URL)"
echo "   📁 public/ceremony/           - Primary ceremony link"
echo "   📁 public/reception6pm/       - Legacy reception link (with time in URL)"
echo "   📁 public/reception/          - Primary reception link"
echo ""
echo "🌻 Your beautiful wedding website is ready!"
