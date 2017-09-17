FROM python:2                       # Imagem base

WORKDIR /app                        # Muda o diretório de Trabalho
RUN mkdir /app                    
COPY . /app                           

RUN pip install django flake8 psycopg2 \
    && chmod +x boot.sh             
EXPOSE 8000                         # Expondo port 8000 para fora do container