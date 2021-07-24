heroku pg:backups capture --app=prosapient-staging
heroku pg:backups public-url b023 --app=prosapient-staging
URL="https://xfrtu.s3.amazonaws.com/697172f3-b44e-4d2c-92bd-cdaac878f19c/2019-07-29T11%3A07%3A29Z/621eed80-72c2-4193-8b99-8fc4fae39497?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJ5HNUZMBKBNNOSYQ%2F20190729%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20190729T111609Z&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&X-Amz-Signature=2e9458e7f1dded5450bdd5180f30bbc88b4d5f5076129a8f74609ec6d28b0995"

heroku pg:reset --app=prosapient-staging-pr-1682
heroku pg:backups restore $URL DATABASE_URL --app=prosapient-staging-pr-1682
heroku run mix ecto.migrate --app=prosapient-staging-pr-1682

heroku run mix run priv/repo/seeds.exs --app=prosapient-staging-pr-1682
