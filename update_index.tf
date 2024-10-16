# 이미 존재하는 index.html 파일을 S3 버킷에 수정하여 업로드
resource "aws_s3_object" "update_index" {
  bucket        = aws_s3_bucket.bucket1.id
  key           = "index.html"
  source        = "index.html"  # 수정된 index.html 파일 경로
  content_type  = "text/html"
  etag          = filemd5("index.html")
}
