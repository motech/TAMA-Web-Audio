#Depends upon extract package
for F in `find . -name *.wav`
do
 P=`extract $F | grep "8000" | grep "mono" | wc -l`
 if [ $P -eq 0 ]; then
     echo "ERROR: File "$F" Does not match Kookoo format"
 fi
done