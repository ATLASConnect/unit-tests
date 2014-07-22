Universe                = Vanilla

Requirements            = ( IS_RCC )

Executable              = /bin/hostname

Should_Transfer_Files   = IF_Needed
When_To_Transfer_Output = ON_Exit
Transfer_Output         = True

Log                     = hostname.log
Output                  = hostname.out
Error                   = hostname.err
 
Notification            = Never


Queue 1
