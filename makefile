
.PHONY: all
all: clean pub-get

.PHONY: pub-get
pub-get:
	@echo "🚀 Pub get..."
	fvm flutter pub get
	@echo "✅ Pub get successfully!"

.PHONY: runner
runner:
	@echo "🚀 Build runner generated..."
	dart run build_runner build --delete-conflicting-outputs
	@echo "✅ Build generated successfully!"

.PHONY: clean
clean:
	@echo "🚀 Cleaning flutter project..."
	fvm flutter clean
	@echo "✅ Flutter clean successfully!"

.PHONY: build-apk
build-apk:
	@echo "🚀 Building split-per-abi flutter app for android..."
	fvm flutter build apk --split-per-abi
	@echo "✅ Build successfully!"

.PHONY: build-appbundle
build-appbundle:
	@echo "🚀 Building app bundle flutter app for android..."
	fvm flutter build appbundle
	@echo "✅ Build successfully!"

.PHONY: build-ios
build-ios:
	@echo "🚀 Building release flutter app for ios..."
	fvm flutter build ios --release
	@echo "✅ Build successfully!"

.PHONY: podfile-update
podfile-update:
	@echo "🚀 Repo update podfile..."
	cd ios && \
	pod deintegrate && \
	echo "✅ Pod deintegrate successfully!" && \
	pod install --repo-update && \
	echo "✅ Pod install successfully!" && \
	cd ..

# Optional: Help menu
.PHONY: help
help:
	@echo "Makefile for Flutter commands"
	@echo "Usage:"
	@echo "  make clean        		- Clean the Flutter project"
	@echo "  make build-apk    		- Build the Flutter app (default APK split abi)"
	@echo "  make build-ios    		- Build the Flutter app (default IOS release)"
	@echo "  make build-appbundle   - Build the Flutter app bundle"
	@echo "  make all          		- Clean & Pub get"
	@echo "  make runner       		- Build runner generated"
	@echo "  make pub-get      		- Pub get all package"
	@echo "  make podfile-update 	- Podfile update"
