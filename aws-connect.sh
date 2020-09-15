KEY=$(sed '1q;d' ~/scripts/data/aws.txt)
USER=$(sed '2q;d' ~/scripts/data/aws.txt)
HOST=$(sed '3q;d' ~/scripts/data/aws.txt)

ssh -i $KEY $USER@$HOST