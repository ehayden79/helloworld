ARG PULL_REGISTRY=registry1.dso.mil/
FROM ${PULL_REGISTRY}ironbank/opensource/python/python38:3.8

WORKDIR /home/python/

USER python


COPY --chown=python:python src/ .

ENTRYPOINT [ "python", "main.py" ]
CMD ["python","main.py"]