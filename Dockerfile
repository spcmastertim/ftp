FROM centos:6
RUN yum -y install vsftpd
RUN useradd tquinn
RUN echo 'tquinn:password'|chpasswd
RUN echo 'background=no' >> /etc/vsftpd/vsftpd.conf
ENTRYPOINT ["/usr/sbin/vsftpd"]
CMD ["/etc/vsftpd/vsftpd.conf"]
