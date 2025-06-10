FROM python:3.14.0b2-alpine3.22
COPY requirments.txt ./tmp
RUN pip install --no-cache-dir -r ./tmp/requirments.txt
COPY ./src /src
CMD ["python", "/src/app.py"]