# aws-hound-config-maker

## Description
Generates a config.json from AWS CodeCommit repos for use with etsy/hound

## Prerequisites

- Requires the AWS CLI tools for Linux: http://docs.aws.amazon.com/cli/latest/userguide/awscli-install-linux.html
- Requires AWS IAM User access key ID and secrete key configured using `aws configure` and output type `json`
- IAM User requires `AWSCodeCommitPowerUser` policy or simlar to perform clone operations

## History

30-Aug-2017: Initial script

## Credits

Written by: Anthony Siano

## License

MIT License
