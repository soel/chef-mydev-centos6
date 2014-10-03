chef-mydev
==========

##これは何?
自分の cent65 プログラム環境用の設定です

##作ったもの
java  
rbenv  
epel  

##使用例
```bash
{
  "rbenv": {
    "user": "kanbara",
    "group": "kanbara"
  },
  "run_list": [
    "recipe[java]",
    "recipe[golang]",
    "recipe[rbenv]",
    "recipe[rbenv::ruby_build]",
    "recipe[yum-epel]"
  ],
  "automatic": {
    "ipaddress": "206"
  }
}
```