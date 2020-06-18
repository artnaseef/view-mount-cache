FROM docker:19.03.11

    COPY ./nested /nested

    WORKDIR /nested

    ENTRYPOINT [ "/nested/run.sh" ]
