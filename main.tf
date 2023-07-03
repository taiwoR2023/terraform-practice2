resource "aws_sns_topic" "demo2" {
  name = var.topic-name

  tags = {
    Team = var.Team
  }
}
resource "aws_sns_topic_subscription" "example_subscription" {
  topic_arn = aws_sns_topic.demo2.arn
  protocol  = "email"
  endpoint  = var.endpoint
}