#!/usr/bin/python3
import os
import subprocess
import glob
import pwd

def get_username():
    return pwd.getpwuid(os.getuid)[0]

curr_dir = os.path.dirname(__file__)
python_file = os.path.join(curr_dir,"uds.py")
# output = subprocess.checkoutput(["python3",python_file], stdout=subprocess.PIPE)
# out, err = output.communicate()

list_of_files = glob.glob('/Users/*.tgz')
list_of_files.sort(reverse=True, key=lambda x: datetime(x.replace('.','_').split('_')[1],'%Y-%m-%d'))
file_to_push = '/Users/{}'.format(list_of_files[0])

subprocess.call(["python3",python_file,"--push",file_to_push]) # backup done
# Cron will make the file as backkup-datestamp,
# create a globbing module which whill travese the fs and check for all the files
# sort them by the date
# and then append the name in the push module
# corn file ka format ssanskar_DATE_TIME.tgz

