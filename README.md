# Storybook Playwright Sample

## Test

```shell
docker compose up -d
docker compose exec storybook yarn test-storybook
```

## Update snapshots

```shell
docker compose up -d
docker compose exec storybook yarn test-storybook -u
```
