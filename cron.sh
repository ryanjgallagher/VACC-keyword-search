cd /users/a/r/areagan/keyword-search
# call python directly
# the older architecture
# /gpfs1/arch/x86_64/python3.2.2/bin/python3 qsub.py
# built for RHEL7
# /gpfs1/arch/x86_64-rhel7/python-3.5.1/bin/python3.5 qsub.py
# use a virtual environment
. pyvenv/bin/activate
export PBS_DEFAULT=pbs_diggs
export MOABHOMEDIR=/opt/moab
python qsub.py

# grep -l "delete me" keywordScrape.o* | xargs rm
for FILE in $(\ls -1 keywordScrape.o*)
do
    mv $FILE output
done



