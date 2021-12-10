#!/bin/sh
trap 'echo: echo SIGQUIT signal received!'
trap 'echo : echo SIGINT signal recived!'
trap 'echo: echo SIGQUIT signal received!'
trap 'echo: echo SIGQUIT signal received!'
trap 'echo : echo SIGINT signal recived!'
echo "The script PID is $$" #$$ PID of current process
 sleep 30 &
child_pid="$!" #PID of most recent background process
echo "Child PID is $child_pid"
echo "Child process with PID $child_pid is now in the OS waiting queue."
echo "The child process is waiting for a software interrupt from the user."
echo "Enter the SIGINT interrupt to have the child process execute on the CPU."
wait $child_pid
echo "Enter SIGQUIT interrupt.
wait $child_pid
echo "Completed executing."
echo "Terminated all processes."
quit 0
