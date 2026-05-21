#!/usr/bin/env bash
# Wrapper to launch Pulsar with performance-tuned Electron/V8 flags.
# Calls the real /usr/bin/pulsar (the system script) so updates don't break this.
export UV_THREADPOOL_SIZE="$(nproc)"
export NODE_ENV=production
exec /usr/bin/pulsar \
    --js-flags="--max-old-space-size=8192 --turbo-fast-api-calls" \
    --disable-renderer-backgrounding \
    --disable-backgrounding-occluded-windows \
    --enable-features=UseOzonePlatform,WaylandWindowDecorations,VaapiVideoDecoder,CanvasOopRasterization \
    --disable-features=TranslateUI,AutofillServerCommunication \
    --ozone-platform=wayland \
    --ignore-gpu-blocklist \
    --enable-gpu-rasterization \
    --enable-zero-copy \
    --enable-native-gpu-memory-buffers \
    --num-raster-threads="$(nproc)" \
    "$@"
