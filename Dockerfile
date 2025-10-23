FROM python:3

# Set the working directory inside the container
WORKDIR /app

# Copy the entire project into the container
COPY . .

# Upgrade pip and install Django
RUN pip install --upgrade pip
RUN pip install django==5.2

# Run migrations and start the Django development server
CMD ["sh", "-c", "python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000"]

