FROM ghcr.io/browserless/chromium

# Set environment variables
ENV MAX_CONCURRENT_SESSIONS=100
ENV CONNECTION_TIMEOUT=60000
ENV MAX_QUEUE_LENGTH=20
ENV PREBOOT_CHROME=true
ENV DEBUG="browserless*"
ENV DISABLE_AUTO_SET_DOWNLOAD_BEHAVIOR=true
ENV FUNCTION_ENABLE_INCOGNITO=true
ENV ENABLE_CORS=true
ENV CHROME_REFRESH_TIME=3600000
ENV CHROME_FLAGS="--disable-dev-shm-usage --no-sandbox --disable-setuid-sandbox --disable-gpu --disable-software-rasterizer --disable-features=VizDisplayCompositor"

# Expose the default browserless port
EXPOSE 3000

# Increase shared memory size
#RUN echo "kernel.shmmax=1073741824" >> /etc/sysctl.conf