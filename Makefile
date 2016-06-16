package:
	make clean
	zip dataprocessor.zip parseMarsisData.py
deploy:
	aws s3 --region us-west-2 cp dataprocessor.zip s3://marvel.acwhite.aws/dataprocessor.zip
clean:
	rm *.zip
all:
	make package
