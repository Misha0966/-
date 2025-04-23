For English: 

This repository is dedicated to refuting the Collatz conjecture and its modifications using the enormous number 999^9999 as an example.

The Collatz conjecture states that any sequence starting from any (!) natural number, when applying the following rules:

n→ 3n+1(if n is odd),

n→ n/2(if n is even),

always ends with the number 1. However, in this project, it is shown that the conjecture breaks down for the number 999^9999.

New Rules:

Here, I propose several new rules that are modifications of the classical Collatz conjecture:

n→ n+1(if n is odd),

n→ n/2(if n is even).

Additionally, rules such as 2n+2, 4n+4, 6n+2, and 8n+8 are introduced under the same conditions.

All these rules were tested on smaller numbers (999, 999^9, 999^99, 999^999) and successfully led the sequences to 1. However, for the number 999^9999, I observed the following:

The rules 3n+1, 4n+4, and 6n+2 cease to work.

The rules n+1, 2n+2, and 8n+8 continue to work, generating sequences that lead to 1.

Features of the 8n+8 Rule:

The 8n+8 rule is particularly interesting because it has a coefficient in front of n that is larger than in the classical 3n+1 rule. Nevertheless, it works even for the number 999^9999, which highlights its potential significance for further research.

Proof of Algorithm Correctness:
The program was tested on various numbers, and all rules (n+1, 2n+2, 3n+1, 4n+4, 6n+2, and 8n+8) worked successfully for the numbers 999, 999^9, 999^99, 999^999.

This confirms that the algorithm contains no errors and correctly processes the sequences.

Conclusions:

The Collatz conjecture is not valid :

For the number 999^9999, the classical 3n+1 rule stops working.

New rules perform better:

The rules n+1, 2n+2, and 8n+8 successfully work for the number 999^9999, generating sequences that lead to 1.
It is important to understand that the new rules (n+1, 2n+2, and 8n+8) do not refute the Collatz conjecture itself but rather confirm the reliability of the algorithm for computing sequences for the number 999^9999.

License Description:

This project is distributed under the Apache License Version 2.0, which allows free use, modification, and distribution of the code, provided that copyright notices and license information are preserved.

Currently, I am working on developing a method for manual verification of extremely large numbers.

If you have any questions or suggestions for manually processing the number 999^9999, feel free to contact me at: misha0966.33@gmail.com .
