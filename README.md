# 🌍 Terraform S3 Website Hosting Project

## 🛠 프로젝트 개요
**Terraform**을 사용하여 **S3 버킷을 생성하고**, 해당 버킷을 통해 **정적 웹사이트를 호스팅**하는 과정을 자동화합니다. `index.html`과 `main.html` 파일을 S3에 업로드하여 웹사이트를 구성하고, 버킷의 퍼블릭 액세스 및 웹사이트 호스팅 설정을 Terraform으로 관리합니다.

## 🚀 프로젝트 목표
1. S3 버킷을 Terraform으로 생성하기.
2. `index.html` 파일을 처음 업로드하고, 필요에 따라 수정하기.
3. `main.html` 파일을 추가로 업로드하여 추가적인 웹 페이지 구성.
4. S3 버킷을 웹사이트 호스팅용으로 설정하고, 퍼블릭 액세스 설정을 적용.

## 📖 Terraform이란?
**Terraform**은 HashiCorp에서 개발한 오픈소스 **인프라 코드(IaC)** 도구입니다. Terraform을 사용하면 인프라 리소스를 선언형 코드로 관리할 수 있으며, 멀티 클라우드 환경에서 자동으로 리소스를 배포하고 수정할 수 있습니다.

## 📂 프로젝트 구조
프로젝트는 Terraform 파일을 여러 개로 분리하여 각각의 역할을 구분했습니다.

1. `bucket.tf`: S3 버킷 생성 및 퍼블릭 액세스 및 웹사이트 호스팅 설정
2. `new_index_upload.tf`: 새로운 `index.html` 파일을 업로드
3. `update_index.tf`: 기존의 `index.html`을 수정하여 재업로드
4. `main_upload.tf`: 새로운 `main.html` 파일을 업로드

## ⚙️ 설치 및 실행 방법

### 1. 클론 받기
이 프로젝트를 클론합니다:
```bash
git clone https://github.com/your-repo/terraform-s3-website-hosting.git
cd terraform-s3-website-hosting
```

### 2. Terraform 초기화
Terraform을 사용하기 전에, 프로젝트 디렉터리에서 Terraform을 초기화합니다.
```
terraform init
```
### 3. S3 버킷 생성
S3 버킷을 생성하고 퍼블릭 액세스 및 웹사이트 호스팅 설정을 적용합니다.
```
terraform apply -target=aws_s3_bucket.bucket1
```
### 4. 새로운 index.html 파일 업로드
초기 index.html 파일을 S3 버킷에 업로드합니다.
```
terraform apply -target=aws_s3_object.new_index
```
### 5. 기존 index.html 파일 수정 후 재업로드
이미 존재하는 index.html 파일을 수정한 후 다시 업로드합니다.
```
terraform apply -target=aws_s3_object.update_index
```
### 6. 새로운 main.html 파일 업로드
추가적인 페이지인 main.html 파일을 S3에 업로드합니다.
```
terraform apply -target=aws_s3_object.main
```
### 📝 결과
이 프로젝트를 통해 S3 버킷을 사용한 정적 웹사이트 호스팅이 가능하며, 파일을 업로드하고 수정할 수 있습니다.
Terraform을 사용하여 인프라 리소스를 관리하고, 코드로 작성된 리소스를 지속적으로 배포하고 관리할 수 있습니다.
최종 웹사이트 엔드포인트는 terraform output 명령어를 통해 쉽게 확인할 수 있습니다.
### 📑 사용 기술
- Terraform
- AWS S3
### 🏁 마무리
Terraform을 사용하여 클라우드 인프라를 코드로 관리하고, 반복 가능한 배포와 관리 프로세스를 구축할 수 있습니다. 이 프로젝트를 통해 S3 버킷에서 간단한 웹사이트 호스팅을 구현할 수 있으며, 실무에서 Terraform을 활용해 인프라 관리를 자동화할 수 있는 기초를 다질 수 있습니다.
