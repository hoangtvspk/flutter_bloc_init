#!/bin/bash
set -e

echo "🚀 Starting Vercel build for Flutter web..."

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

# Create environment file first (before pub get, so Flutter can find the files)
echo "📝 Creating environment file..."
chmod +x scripts/create-env.sh
./scripts/create-env.sh

# Install dependencies
echo "📥 Installing Flutter dependencies..."
flutter pub get

# Build web
ENVIRONMENT=${ENVIRONMENT:-dev}
echo "🏗️  Building Flutter web for environment: $ENVIRONMENT..."
flutter build web --release --dart-define=ENVIRONMENT=$ENVIRONMENT

echo "✅ Build completed! Output: build/web"

