#Скрипт обновляет мед аппараты на DGOK
$Creds=Get-Credential
$Session=New-SSHSession -ComputerName 10.65.30.11 -Credential $Creds -AcceptKey 
Invoke-SSHCommand -SSHSession $Session -Command 'cd ansible; pwd; ansible-playbook -i hosts update_os.yaml --extra-vars "ansible_sudo_pass=Best@dm1n"';
#$result.output
#Remove-SSHSession -SSHSession $Session