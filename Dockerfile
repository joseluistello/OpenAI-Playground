FROM python:3.10-slim

# set the working directory
WORKDIR /code

# install dependencies
COPY ./requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy the src to the folder
COPY ./src ./src

# set the secret key
ENV SECRET_KEY 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

# start the server
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]
