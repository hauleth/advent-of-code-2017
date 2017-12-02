{
    min = $1
    max = $1
    for (i = 2; i <= NF; i++) {
        if ($i > max) max = $i
        if ($i < min) min = $i
    }
    SumA += (max - min)
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
    SumB += result
}

END {
    print "A: " SumA
    print "B: " SumB
}
