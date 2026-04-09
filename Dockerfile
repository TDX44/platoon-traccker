FROM python:3.11-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt gunicorn \
    && addgroup -g 1000 -S appgroup \
    && adduser -S -D -u 1000 -G appgroup appuser
COPY . .
RUN mkdir -p /data /home/appuser \
    && chown -R appuser:appgroup /data /home/appuser
ENV DATA_DIR=/data
ENV HOME=/home/appuser
USER appuser
EXPOSE 5000
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:5000", "server:app"]
