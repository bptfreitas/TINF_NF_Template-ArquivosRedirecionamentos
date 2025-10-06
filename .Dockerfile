FROM ubuntu:24.04

RUN apt update 

RUN apt install -y sudo

WORKDIR /root

ENV PATH="$PATH:/usr/games"

COPY .tests/ .tests/

RUN chmod +x .tests/*

# COPY .corretor corretor

# RUN chmod +x ./corretor

COPY .grade_student.sh grade_student.sh

RUN chmod +x  grade_student.sh

COPY questao*.sh /root/

RUN chmod +x questao*.sh

# COPY trabalho.sh trabalho.sh

# RUN chmod +x ./trabalho.sh

CMD [ "./grade_student.sh" ]
