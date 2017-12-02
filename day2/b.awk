BEGIN {
    sum = 0
}

{
    result = 0
    for (i = 1; i < NF && result == 0; i++) {
        for (j = i + 1; j <= NF; j++) {
            if ($i % $j == 0) {
                result = $i / $j
                break
            }
            if ($j % $i == 0) {
                result = $j / $i
                break
            }
        }
    }
    sum += result
}

END {
    print sum
}
