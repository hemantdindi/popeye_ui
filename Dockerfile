FROM python:3.8-slim-buster
RUN mkdir -p /app/
COPY . /app/
WORKDIR /app/
RUN pip install -r requirements.txt
RUN chmod +x /app/run_server.sh
RUN chmod +x /app/lib/popeye
RUN export PATH=$PATH:/app/lib/popeye
EXPOSE 8000
EXPOSE 6443
RUN useradd -u 1001 popeye
RUN chown popeye -R /app
USER popeye

CMD ["/app/run_server.sh"]