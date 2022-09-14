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