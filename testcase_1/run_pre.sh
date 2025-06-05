#!/bin/bash

find . -type p -size 0 -exec rm -v {} +

stud_id=sdi

rm -rf /home/users/$stud_id/test1
mkdir /home/users/$stud_id/test1

cp -r added_source_dir /home/users/$stud_id/test1/
cp -r added_target_dir /home/users/$stud_id/test1/
cp -r config_source_dir1 /home/users/$stud_id/test1/
cp -r config_source_dir2 /home/users/$stud_id/test1/
cp -r config_target_dir2 /home/users/$stud_id/test1/
cp -r config_target_dir1 /home/users/$stud_id/test1/


CONFIG_FILE="config_template.cfg"
STUDENT_ID=$stud_id
OUTPUT_FILE="config_fss.cfg"

# Replace "sdi" with the given student_id
sed "s/\/sdiXXX\//\/$STUDENT_ID\//g" "$CONFIG_FILE" > "$OUTPUT_FILE"

rm -rf /home/users/$stud_id/test1/config.cfg 
cp config_fss.cfg /home/users/$stud_id/test1/
cp config_nfs.cfg /home/users/$stud_id/test1/


