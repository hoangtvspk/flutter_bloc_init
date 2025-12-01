#!/bin/bash
set -e

echo "📦 Installing dependencies for Vercel build..."

# Setup Flutter SDK
if [ -d flutter ]; then 
  echo "📦 Flutter SDK exists, updating..."
  cd flutter && git pull && cd .. 
else 
  echo "📦 Cloning Flutter SDK..."
  git clone https://github.com/flutter/flutter.git -b stable
fi

# Add Flutter to PATH
export PATH="$PATH:$(pwd)/flutter/bin"

# Create environment file (needed before pub get)
echo "📝 Creating environment file..."
chmod +x scripts/create-env.sh
./scripts/create-env.sh

# Install Flutter dependencies
echo "📥 Installing Flutter dependencies..."
flutter pub get

echo "✅ Installation completed!"

