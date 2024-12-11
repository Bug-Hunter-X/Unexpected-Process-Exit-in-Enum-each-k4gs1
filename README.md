# Elixir Bug: Unexpected Process Exit in Enum.each

This repository demonstrates a bug in Elixir code where using `Process.exit` inside `Enum.each` can lead to unexpected termination of the process before the loop completes.  This can be problematic if other parts of your system rely on the loop finishing correctly.

The `bug.ex` file contains the buggy code.  The `bugSolution.ex` file provides a corrected version using `Enum.reduce` or a more controlled approach to handling the condition.

## Bug Description
The code uses `Enum.each` to iterate, and when a specific condition is met (number 3 in this case), it uses `Process.exit` to stop the current process.  This means any further code execution within that process is halted prematurely.  This might not always be the intended behavior.