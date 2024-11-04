FROM ubuntu:latest

RUN apt update

RUN apt install -y git sudo gcc make

WORKDIR /root

COPY .tests/ .tests/

COPY .corretor corretor

RUN chmod +x ./corretor

COPY .grade_student.sh grade_student.sh

COPY trabalho.sh trabalho.sh

RUN chmod +x ./trabalho.sh

CMD [ "./grade_student.sh" ]
