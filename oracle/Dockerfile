FROM oracle/database:12.2.0.1-ee
ENV TZ Asia/Shanghai
ENV ORACLE_BASE=/opt/oracle
user root
RUN yum install sudo -y
RUN echo 'oracle ALL = NOPASSWD: ALL' >> /etc/sudoers
user oracle
COPY startDB.sh runOracle.sh backup.sh start_archlog.sh backup_init.sh backup0.sh backup1.sh delarch.sh run_backup_init.sh run_backup0.sh run_backup1.sh run_delarch.sh $ORACLE_BASE/
