# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item            | Description                                       | Value |
| --------------- | ------------------------------------------------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25%   |
| Question 1      | Your answers to the question                      | 25%   |
| Question 2      | Your answers to the question                      | 25%   |
| Question 3      | Your answers to the question                      | 25%   |

## Name

## Summary

In this lab we built the same 5 state machine two ways, onehot and binary, and ran both on the board at the same time. sw[0] is w, btnC is the clock and btnU resets to A. z is 1 in C and E. Onehot used 5 D Flip-flops and the equations came right from the state table. Binary used 3 D Flip-flops and we needed KMaps for each bit. Both passed the testbench and the LEDs matched on the board.

## Lab Questions

### Compare and contrast One Hot and Binary encodings

Both store the state in D Flip-flops and use logic to get the next state. Onehot uses one Flip-flop per state, so the logic is simple since you only check one Flip-flop. Binary only needs log2(N) Flip-flops, but the logic has to look at all the bits so it gets longer, and you have unused states like 101, 110, 111.

### Which method did your team find easier, and why?

Onehot was easier because we just looked at which states go into each state and wrote the equation, no KMaps. It was also easier to debug since each state has its own LED. Binary took longer because of the three KMaps and the don't cares.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

FPGAs have a lot of Flip-flops, so onehot is usually fine and it's faster since the logic is small. If the machine has a lot of states, binary is better because it uses way fewer Flip-flops. Binary also makes sense if you're running low on Flip-flops. For a small machine like ours either one works.
