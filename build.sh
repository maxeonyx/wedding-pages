#!/bin/bash

# Wedding Pages Build Script
# This script generates 4 variants of the wedding website by replacing CSS variables and images

echo "🌸 Building wedding website variants..."

# Clean and create output directories
rm -rf public
mkdir -p public/ceremony6pm
mkdir -p public/reception6pm  
mkdir -p public/ceremony4pm
mkdir -p public/reception4pm

# Copy styles.css to each directory
cp src/styles.css public/ceremony6pm/styles.css
cp src/styles.css public/reception6pm/styles.css
cp src/styles.css public/ceremony4pm/styles.css
cp src/styles.css public/reception4pm/styles.css

# Copy variant-specific invitation images
cp "src/images/Invitation - Ceremony - 6pm.jpeg" "public/ceremony6pm/invitation.jpeg"
cp "src/images/Invitation - Reception - 6pm.jpeg" "public/reception6pm/invitation.jpeg"
cp "src/images/Invitation - Ceremony - Habesha.jpeg" "public/ceremony4pm/invitation.jpeg"
cp "src/images/Invitation - Reception - Habesha.jpeg" "public/reception4pm/invitation.jpeg"

# Generate variant 1: ceremony6pm/index.html (Ceremony + Reception, Western time - 6pm)
echo "<!-- VARIANT: Full ceremony + reception, 6pm start -->" > public/ceremony6pm/index.html
sed 's/:root { --variant: '\''ceremony-western'\''; }/:root { --variant: '\''ceremony-western'\''; }/' src/index.html >> public/ceremony6pm/index.html

# Generate variant 2: reception6pm/index.html (Reception only, Western time - 6pm)  
echo "<!-- VARIANT: Reception only, 6pm start -->" > public/reception6pm/index.html
sed 's/:root { --variant: '\''ceremony-western'\''; }/:root { --variant: '\''reception-western'\''; }/' src/index.html >> public/reception6pm/index.html

# Generate variant 3: ceremony4pm/index.html (Ceremony + Reception, Habesha time - 4pm)
echo "<!-- VARIANT: Full ceremony + reception, 4pm start -->" > public/ceremony4pm/index.html  
sed 's/:root { --variant: '\''ceremony-western'\''; }/:root { --variant: '\''ceremony-habesha'\''; }/' src/index.html >> public/ceremony4pm/index.html

# Generate variant 4: reception4pm/index.html (Reception only, Habesha time - 4pm)
echo "<!-- VARIANT: Reception only, 4pm start -->" > public/reception4pm/index.html
sed 's/:root { --variant: '\''ceremony-western'\''; }/:root { --variant: '\''reception-habesha'\''; }/' src/index.html >> public/reception4pm/index.html

echo "✅ Build complete! Generated 4 variants:"
echo "   📁 public/ceremony6pm/         - Full ceremony + reception (6pm)"
echo "   📁 public/reception6pm/  - Reception only (6pm)" 
echo "   📁 public/ceremony4pm/      - Full ceremony + reception (4pm)"
echo "   📁 public/reception4pm/     - Reception only (4pm)"
echo ""
echo "🌻 Your beautiful wedding website is ready!"
