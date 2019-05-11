FROM python:3.7-slim

LABEL "maintainer"="Maxence Maireaux <maxence@maireaux.fr>"
LABEL "repository"="https://github.com/flemzord/ansibe-actions"
LABEL "homepage"="https://github.com/flemzord/ansibe-actions"

LABEL "com.github.actions.name"="ansible"
LABEL "com.github.actions.description"="Run Ansible"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="gray-dark"

RUN pip install ansible

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
