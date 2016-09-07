



for f in $(find .  -name '*_tex')
do
    echo $f
    f2=${f%_tex}
    sed -i '52s@.*@    \\put(0,0){\\includegraphics[width=\\unitlength]{'"$f2"'}}%@g' $f
done
