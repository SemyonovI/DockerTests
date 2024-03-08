# Начнём с базового образа Ubuntu
FROM ubuntu
# Задаём переменную окружения, чтобы пользователь не участвовал в установке (выбор клавиатуры и прочее)
ENV DEBIAN_FRONTEND=noninteractive 
# Установим необходимые пакеты
RUN apt update
# Запустим скрипт
COPY ./echoTime.sh ./root/echoTime.sh
# Зададим стартовую команду для контейнера
CMD ["bash", "./root/echoTime.sh"]
