## spawn scp /path_from/file_name user_name_here@to_host_name:/path_to
## spawn scp root@192.168.112.174:/home/jzavala74mz/Uploads/db_20210110_1307.SSdb /root/db_20210110_1307.SSdb
spawn scp root@192.168.112.174:/home/jzavala74mz/Uploads/salida.xml /root/salida.xml


expect {
      "Are you sure you want to continue connecting (yes/no)?" {
            send "yes\r"
            exp_continue
      }
      "password:" {
            send "P4ssw0rd\r"
            interact
      }
}


