# Use lightweight Python image
FROM python:3.9

WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Expose port and run app
EXPOSE 5000
CMD ["python", "app.py"]

