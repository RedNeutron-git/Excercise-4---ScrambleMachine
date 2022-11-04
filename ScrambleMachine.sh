clear
echo "-----------------------------"
echo "# Scramble Machine"
echo "-----------------------------"
read -p 'Input Wordlist: ' wordlist
read -p 'Save file as: ' save
echo ""
echo "Input your scramble mode"
echo "[1] Mode MD5"
echo "[2] Mode Base32"
echo "[3] Mode Base64"
echo "[4] Mode SHA1"
echo ""
read -p "Enter Mode [number]: " mode
zeus(){
    if [ $mode = 1 ]; then
    true=$(echo 'md5sum') #echo "true"
    echo $true    
    elif [ $mode = 2 ]; then
    true2=$(echo 'base32') #echo "true"
    echo $true2    
    elif [ $mode = 3 ]; then
    true3=$(echo 'base64') #echo "true"
    echo $true3    
    elif [ $mode = 4 ]; then
    true4=$(echo 'sha1sum') #echo "true"
    echo $true4    
    else
    exit 0
    fi
}
hammer=$('zeus')
echo " "
echo "-----------------------------"
echo "Wordlist: " $wordlist
echo "Your file: " $save
echo "Mode: " $hammer
echo "-----------------------------"
echo " "
while IFS= read -r x; 
do echo -n $x | $hammer ; 
done < $wordlist > $save && cat $save | more

# Big respect for Mr Net0
