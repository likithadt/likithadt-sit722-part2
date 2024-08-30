# Dockerfile for book_catalog microservice

FROM python:3.11-slim
WORKDIR /app/book_catalog
COPY ./book_catalog/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY ./book_catalog /app/book_catalog
EXPOSE 8000
ENV DATABASE_URL=postgresql://books_db_u6rn_user:e6jcIwIu3R2N4ATlwleZxcptuDER5nZu@dpg-cr8qb7i3esus73bb47p0-a.oregon-postgres.render.com/books_db_u6rn
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]