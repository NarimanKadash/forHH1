#Скрипт обновляет мед аппараты на AKT
$Creds=Get-Credential
$Session=New-SSHSession -ComputerName 10.67.29.66 -Credential $Creds -AcceptKey 
Invoke-SSHCommand -SSHSession $Session -Command 'cd ansible; pwd; ansible-playbook -i inventory_new new_update_os.yaml --extra-vars "ansible_sudo_pass=,dlr.1;c1,HwDr"';
#$result.output
#Remove-SSHSession -SSHSession $Session