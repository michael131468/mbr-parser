FROM fedora:37

RUN dnf install -y \
        gcc \
        python3 \
        python3-devel \
        python3-pip

RUN pip3 install distorm3

ADD mbr_parser.py /usr/bin/
RUN chmod +x /usr/bin/mbr_parser.py

ENTRYPOINT ["/usr/bin/mbr_parser.py"]
