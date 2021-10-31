FROM openjdk:11
RUN mkdir -p /usr/src/JMusicBot/
WORKDIR /usr/src/JMusicBot/
COPY . .

CMD ["java", "-Dnogui=true", "-jar", "JMusicBot-0.3.6.jar"]