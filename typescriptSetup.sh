npm init -y
npm install typescript --save-dev
npm install @types/node --save-dev
npx tsc --init --rootDir src --outDir build \
--esModuleInterop --resolveJsonModule --lib es6 \
--module commonjs --allowJs true --noImplicitAny true

mkdir src
cp ~/scripts/index.ts ./src/index.ts

npm install prompt-sync

commitgit typescriptSetup
