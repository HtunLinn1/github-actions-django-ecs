# GitHub Actions CI/CD

## AWS CloudFormation
- テンプレート検証
  ```
  aws cloudformation validate-template --template-body file://./cloudformation/network.yml
  ```
- スタック作成
  ```
  aws cloudformation create-stack --stack-name htunlinn-stack --template-body file://./cloudformation/network.yml
  ```
- スタック削除
  ```
  aws cloudformation delete-stack --stack-name htunlinn-stack
  ```

## Dockerfile
- Dockerイメージビルド
  ```
  cd git-actions-django-ecs
  docker build -t djangoimage .
  docker images
  ```
- Dockerコンテナ起動
```
docker run --rm -p 8080:8080 djangoimage
```

## Docker Compose
- 起動
  ```
  docker-compose up -d
  ```
- 停止
  ```
  docker-compose down
  ```