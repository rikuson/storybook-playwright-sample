FROM mcr.microsoft.com/playwright:v1.41.2-jammy

# NOTE: Workaround build error from storybook
# https://github.com/storybookjs/storybook/issues/16555
ENV CI true
ENV NODE_OPTIONS --openssl-legacy-provider
ENV VIDEO_CALL_SERVER_HOST http://host.docker.internal:8082

RUN apt-get update && apt-get install -y clang make g++

WORKDIR /app
COPY . /app

RUN yarn
ENTRYPOINT ["yarn", "storybook"]
