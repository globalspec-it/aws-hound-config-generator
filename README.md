# aws-hound-config-maker

## Description
Generates a hound `config.json` from all of your AWS CodeCommit repos by automatically iterating through an AWS region.  Also supports manually adding other repos to the end of the file as well.

## Prerequisites
- For use with the Etsy/Hound project: https://github.com/etsy/hound
- Requires the AWS CLI tools for Linux: http://docs.aws.amazon.com/cli/latest/userguide/awscli-install-linux.html
- Requires AWS IAM User access key ID and secrete key configured using `aws configure` and output type `json`
- IAM User requires `AWSCodeCommitPowerUser` policy or simlar to perform clone operations

## History

30-Aug-2017: Initial script

## Credits

Written by: Anthony Siano

## License

MIT License
