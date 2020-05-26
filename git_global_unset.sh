git config --global --unset user.name
git config --global --unset user.email
git config --list

function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}

pause