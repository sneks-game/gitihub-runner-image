FROM bigwisu/pm2:latest

WORKDIR /usr/src/app

COPY . ./

ENV RUNNER_ALLOW_RUNASROOT=1
ENV _REPO_PATH=__REPO_PATH__
ENV _GITHUB_TOKEN=__GITHUB_TOKEN__

CMD [ "sh", "setup_env.sh" ]
ENTRYPOINT ["sh", "linux_arm_setup.sh"]
