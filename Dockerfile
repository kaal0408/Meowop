FROM kaal0408/Meowbot:latest

#clonning repo 
RUN git clone https://github.com/kaal0408/MeowUserbot.git /root/Meowbot

#working directory 
WORKDIR /root/Meowbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","Meowbot"]
