resource "aws_s3_bucket" "lambda_s3_buckets" {
  bucket        = "ct-sandbox-lambda"
  acl           = "private"
  force_destroy = true

}

resource "aws_s3_bucket_object" "object" {
  bucket = "ct-sadbox-lambda"
  key    = "YOUR-PATH-TO-STORE-LAMBDA-DEPLOYMENT"
  source = "lambda.zip"

  depends_on = [
    aws_s3_bucket.lambda_s3_buckets,
  ]
}
