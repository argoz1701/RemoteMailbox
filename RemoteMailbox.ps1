 #Enter log in name and email <name.last>



While ($true) {

Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn

                
                Write-Output "Enter Username then Email. Type Ctrl+C to Exit.`n"
                
                $userName = Read-Host -Prompt "Enter the user name"
                $userEmail = Read-Host -Prompt "Enter email"
                

                           Enable-MailUser -Identity $userName –ExternalEmailAddress $userName@domain.mail.onmicrosoft.com
                           Enable-RemoteMailbox $userEmail@domain.com
                           Set-ADUser -Identity $userName -Replace @{msExchUserAccountControl="0"} # 0 = enable, 2 = disable

                If ($condition -eq $true) {
                          Break

                }

}                                



                               



                               



                

                               

                


