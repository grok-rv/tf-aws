{
    "Version": "2012-10-17",
    "Id": "Policy1524401556297",
    "Statement": [
        {
            "Sid": "PermissionsToListObjects",
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::${account_id}:user/${terraform_admin}"
                ]
            },
            "Action": [
                "s3:*"
            ],
            "Resource": [
                "arn:aws:s3:::${statefile_bucketname}",
                "arn:aws:s3:::${statefile_bucketname}/*"
            ]
        }
    ]
}