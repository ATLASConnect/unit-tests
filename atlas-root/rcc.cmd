Universe                = Vanilla



Requirements            = ( IS_RCC )

Executable              = rcc.sh

Should_Transfer_Files   = IF_Needed
When_To_Transfer_Output = ON_Exit
Transfer_Output         = True
Transfer_Input_Files    = rcc.dat

Arguments               = rcc.dat

Log                     = log/rcc.log
Output                  = log/rcc.out.$(Cluster).$(Process)
Error                   = log/rcc.err.$(Cluster).$(Process)
 
Notification            = Never


Queue 10
