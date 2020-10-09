# Git_Credential_Manager
## 소개
자신의 컴퓨터가 아닌 다른 컴퓨터를 사용하는 일이 생길 경우,(학원컴퓨터) 매번 수동으로 Git 사용자 정보 입력을 하는것이 번거로워 만들게 되었다<br><br>
sh 파일로 git이 설치만 되있으면 windows 환경에서 클릭만으로 쉽게 등록/해제 가능하도록 만들었다<br><br>
코드는 매우 심플하기때문에 MD 파일에도 적으니 확인 바라며, 추가로 등록 파일은 메모장이나 다른 에디터로 열어 자신의 Git 계정의 user name과 user email을 입력후 사용하길 바람


## 버그 발견
버그라고 하긴 뭐하지만 마땅한 표현이 없어 버그라고 지칭함<br> 반드시 다운받은 후 .git 폴더 삭제 후 사용하기 바람<br>(.git 환경에 있어서 그런지 이유는 모르지만 명령어를 인식못함)

## 사용법
### git_global_set.sh
Git 유저 정보 등록 - 에디터로 열어 유저 정보 입력 후 사용하세요
```sh
git config --global user.name "Type userName Here"
git config --global user.email "Type userEmail Here"
git config --list

function pause(){
 read -s -n 1 -p "Press any key to continue . . ."
 echo ""
}

pause
```

### git_global_unset.sh
Git 유저 정보 삭제, Windows 자격 증명 관리 창 - 자격 증명 해제용
```sh
git config --global --unset user.name
git config --global --unset user.email
git config --list
rundll32.exe keymgr.dll, KRShowKeyMgr
```
