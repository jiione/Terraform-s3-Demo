# 새로운 main.html 파일을 S3 버킷에 업로드
resource "aws_s3_object" "main" {
  bucket        = aws_s3_bucket.bucket1.id
  key           = "main.html"
  source        = "main.html"  # 새로운 main.html 파일 경로
  content_type  = "text/html"
}
