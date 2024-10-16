# 새로운 index.html 파일을 S3 버킷에 업로드
resource "aws_s3_object" "new_index" {
  bucket        = aws_s3_bucket.bucket1.id
  key           = "index.html"
  source        = "index.html"  # 새로운 index.html 파일 경로
  content_type  = "text/html"
}
