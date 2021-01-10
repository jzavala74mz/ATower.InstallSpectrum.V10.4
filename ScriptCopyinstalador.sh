# spawn scp /path_from/file_name user_name_here@to_host_name:/path_to
spawn scp root@192.168.112.174:/home/jzavala74mz/Uploads/SpectrumInstall_10.4_Linux.tar.gz /root/SpectrumInstall_10.4_Linux.tar.gz

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

## expect "password:"
## send P4ssw0rd\n;
## interact

