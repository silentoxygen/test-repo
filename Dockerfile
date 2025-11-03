FROM python:3.11-slim
# Create non-root user
RUN useradd -m appuser
USER appuser
WORKDIR /app
COPY app.py .
CMD ["python", "app.py"]
