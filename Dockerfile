# В качестве базового образа используем последнюю версию Ubuntu
FROM ubuntu:latest
# Обновляем пакеты и устанавливаем внутрь контейнера нужные нам пакеты
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
# Копируем содержимое текущей директории в папку /app внутри образа
COPY . /app
# Меняем рабочую директорию
WORKDIR /app
# Устанавливаем зависимости, описанные в requirements.txt
RUN pip install -r /app/requirements.txt
CMD ["python3","app.py"]
