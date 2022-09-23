#=== Use Modules ===#
use IO::Socket;
use Scalar::Util qw(looks_like_number);
use IO::Handle;
#=== Clear Screen ===#
system("cls || clear");
#Script Banner================================================================
print q{ 

    $$\   $$\                                $$\      $$$$$$\    $$\                         $$\                     
    $$ |  $$ |                               $$ |    $$  __$$\   $$ |                        $$ |                    
    $$ |  $$ | $$$$$$\   $$$$$$\   $$$$$$\ $$$$$$\   $$ /  \__|$$$$$$\    $$$$$$\   $$$$$$\  $$ | $$$$$$\   $$$$$$\  
    $$$$$$$$ |$$  __$$\  \____$$\ $$  __$$\\_$$  _|  \$$$$$$\  \_$$  _|  $$  __$$\  \____$$\ $$ |$$  __$$\ $$  __$$\ 
    $$  __$$ |$$$$$$$$ | $$$$$$$ |$$ |  \__| $$ |     \____$$\   $$ |    $$$$$$$$ | $$$$$$$ |$$ |$$$$$$$$ |$$ |  \__|
    $$ |  $$ |$$   ____|$$  __$$ |$$ |       $$ |$$\ $$\   $$ |  $$ |$$\ $$   ____|$$  __$$ |$$ |$$   ____|$$ |      
    $$ |  $$ |\$$$$$$$\ \$$$$$$$ |$$ |       \$$$$  |\$$$$$$  |  \$$$$  |\$$$$$$$\ \$$$$$$$ |$$ |\$$$$$$$\ $$ |      
    \__|  \__| \_______| \_______|\__|        \____/  \______/    \____/  \_______| \_______|\__| \_______|\__|      
                                                                                                                 
                                                                                                                                                                                                                             

    [---]   by:> VVQUA & TXKHAI   [---]
    =-------=-=-=-=-=-=-=-=-=-------=
};
print("\n");



# Check Intenret Connection !
print("\r[~] Checking Internet Connection [...]");
STDOUT->flush();
sleep(2);
my $check = IO::Socket::INET->new('PeerAddr'=>'www.google.com', 
	'PeerPort'=>80, 
	'Timeout'=>2, 
	'proto'=>'tcp');
if(!(defined $check && $check)){
        print("\r[-] Checking Internet Connection [Fail!]");
	print("\n[!] Error: Please Check Your Internet Connection !!!\n");
	exit(1);
}
$check->close();
print("\r[+] Checking Internet Connection [Connected] \n");
STDOUT->flush();
# INPUT TARGET INFO ==============================================

system("python3 ./lib/cc/cc.py") == 0 or die "Python script returned error $?";
