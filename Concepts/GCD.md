#Grand Central Dispatch

1. GCD only controls the execution timing

#There are 2 types of GCD Queues:
a. Main Queue: Runs on main thread and its serial Queue.
b. Global Queues: These are concurrent which are shared by the system and has priorities.
c. Custom: Can be parallel or custom.

#Global Queues are driven by QoS:
1. User-Interacted: Runs on main thread
2. User-Initiated: With high priority
3. Utility: With default
4. Background: Low priority

#Sync v/s Async
The sync function returns the control if all the tasks are executed,
whereas the async doesn't wait and returns the control immediately.
