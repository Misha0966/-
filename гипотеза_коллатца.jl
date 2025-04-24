using Primes
using Statistics
using Base.Threads

println("Анализ последовательностей Коллатца с различными правилами")

# Функция генерации последовательности
function generate_sequence(n::BigInt; rule=n->iseven(n) ? div(n, 2) : 3n+1, max_steps=1000000)
    sequence = [n]
    steps = 0
    seen_values = Set{BigInt}()  # Множество для отслеживания уже встреченных значений
    
    while n != 1 && steps < max_steps
        # Проверка на цикл
        if n in seen_values
            println("Обнаружен цикл: текущее значение n = $n")
            return sequence, steps, :loop  # Последовательность уходит в бесконечность (цикл)
        end
        push!(seen_values, n)
        
        # Применение правила
        n = rule(n)
        push!(sequence, n)
        steps += 1
    end
    
    if n == 1
        return sequence, steps, :completed  # Последовательность завершилась
    else
        return sequence, steps, :interrupted  # Превышено максимальное количество шагов
    end
end

# Определение правил
rules = [
    ("n+1", n -> iseven(n) ? div(n, 2) : n + 1),
    ("2n+2",  n -> iseven(n) ? div(n, 2) : 2n+2),
    ("3n+1", n -> iseven(n) ? div(n, 2) : 3n + 1),
    ("4n+4",  n -> iseven(n) ? div(n, 2) : 4n+4),
    ("6n+2",  n -> iseven(n) ? div(n, 2) : 6n+2),
    ("8n+8",  n -> iseven(n) ? div(n, 2) : 8n+8)
]

# Функция для сохранения результатов в файл
function save_rule_results(name, steps, time_taken, sequence, status, directory="collatz_sequences")
    # Создание директории, если её нет
    if !isdir(directory)
        mkdir(directory)
    end
    
    filename = "$directory/$(replace(name, "/" => "_"))_sequence.txt"
    open(filename, "w") do f
        write(f, "Результаты для правила: $name\n")
        write(f, "Длина последовательности: $steps\n")
        write(f, "Статус: ")
        
        if status == :completed
            write(f, "завершена\n")
        elseif status == :loop
            write(f, "уходит в бесконечность (цикл)\n")
        elseif status == :interrupted
            write(f, "прервана\n")
        end
        
        write(f, "Время выполнения: $time_taken сек\n")
        write(f, "Последовательность:\n")
        
        # Сохраняем всю последовательность
        for value in sequence
            write(f, "$value\n")
        end
    end
    
    println("Результаты для правила $name сохранены в файл: $filename")
end

# Функция сравнения правил (с параллельной обработкой)
function compare_rules(start_num, directory="1collatz_sequences1")
    @threads for (name, rule) in rules
        println("\nАнализ правила: $name")
        time_taken = @elapsed begin
            sequence, steps, status = generate_sequence(start_num, rule=rule)
        end
        
        # Сохраняем результаты сразу после выполнения правила
        save_rule_results(name, steps, time_taken, sequence, status, directory)
        
        if status == :completed
            println("Правило $name завершилось за $steps шагов за время $time_taken сек.")
        elseif status == :loop
            println("Правило $name уходит в бесконечность (цикл) на шаге $steps за время $time_taken сек.")
        elseif status == :interrupted
            println("Правило $name прервано на шаге $steps за время $time_taken сек.")
        end
    end
end

# Запуск анализа
start_num = BigInt(999)^9999
println("\nАнализ для числа: $start_num")
compare_rules(start_num)
