#!/bin/bash
if [[ "$1" = train ]]
then
    aws s3 cp s3://quilt-example/quilt/open_fruit/training_data/X_meta.csv \
        X_meta.csv --quiet
    aws s3 sync s3://quilt-example/quilt/open_fruit/images_cropped/ \
        images_cropped/ --quiet
    python train.py
fi
