# Storybook Playwright Sample

## Installation

```shell
yarn
```

## Start server

```shell
docker-compose up
```

## Test

After starting server, run the command below.

```shell
docker compose exec storybook yarn test-storybook
```

## Update snapshots

After starting server, run the command below.

```shell
docker compose exec storybook yarn test-storybook -u
```
