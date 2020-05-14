FROM ubuntu
MAINTAINER Aryan Wadhavekar

COPY ./userCreation.sh /
RUN chmod +x /userCreation.sh
RUN ["/userCreation.sh"]
COPY /nearest.sh home/ChiefCommander ./
COPY /record.sh home/ArmyGeneral
COPY /record.sh home/NavyMarshal
COPY /record.sh home/AirForceChief
COPY ./permissions.sh
RUN chmod +x /permissions.sh
COPY ./crontabSetting.sh
COPY ./aliasGeneration
RUN chmod +x /aliasGeneration.sh
RUN ["/aliasGeneration.sh"]
COPY /finalattendance.sh home/ChiefCommander
COPY /autoSchedule.sh home/ChiefCommander
COPY /attendance.sh home/ChiefCommander

RUN ubuntu

