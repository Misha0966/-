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

На Русском:

Этот репозиторий посвящён опровержению гипотезы Коллатца и её модификаций на примере огромного числа 999^9999. 

Гипотеза Коллатца утверждает, что любая последовательность, начинающаяся с любого(!) натурального числа, при применении правил:

n→ 3n+1 (если n нечётное),

n→ n/2 (если n чётное)

всегда завершается числом 1. Однако в данном проекте показано, что на числе 999^9999 гипотеза перестаёт работать.

Новые правила:

Здесь я предложил несколько новых правил, которые являются модификациями классической гипотезы Коллатца:

n→ n+1 (если n нечётное),

n→ n/2 (если n чётное)

а так же для 2n+2, 4n+4, 6n+2, 8n+8 при тех же условиях.

Все эти правила были протестированы на меньших числах (999, 999^9, 999^99, 999^999) и успешно приводили последовательности к 1. Однако на числе 999^9999 я стал наблюдать:

Правила 3n+1, 4n+4 и 6n+2 перестают работать.

Правила n+1, 2n+2 и 8n+8 продолжают работать, создавая последовательности, которые приводят к 1.

Особенности правила 8n+8:

Правило 8n+8 особенно интересно, так как оно имеет коэффициент перед n, который больше, чем в классическом правиле 3n+1. Тем не менее, оно работает даже для числа 999^9999, что указывает на его потенциальную значимость для дальнейших исследований.

Доказательство корректности алгоритма:

Программа была протестирована на различных числах, и все правила n+1, 2n+2, 3n+1, 4n+4, 6n+2 и 8n+8 успешно работали на числах 999, 999^9, 999^99 и 999^999.

Это подтверждает, что алгоритм не содержит ошибок и корректно обрабатывает последовательности.

Выводы:

Гипотеза Коллатца не верна:

На числе 999^9999 классическое правило 3n+1 перестаёт работать.

Новые правила работают лучше:

Правила n+1, 2n+2 и 8n+8 успешно работают для числа 999^9999, создавая последовательности, которые приводят к 1.

Важно понимать тот факт, что новые правила n+1, 2n+2 и 8n+8, не опровергают саму гипотезу Коллатца, а подтверждают надёжность алгоритма при вычислении последовательности для числа: 999^9999

Описание лицензии:

Данный проект распространяется по лицензии Apache License Version 2.0 , что позволяет свободно использовать, изменять и распространять код при условии сохранения авторских прав и уведомления о лицензии.

В данный момент, я занимаюсь разработкой способа ручной проверки для сверхбольших чисел.

Если у вас есть любые вопросы, или способы вручную перебрать число 999^9999, то вы можете связаться со мной по адресу: misha0966.33@gmail.com
