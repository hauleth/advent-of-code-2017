BEGIN {
    sum = 0
}

{
    min = $1
    max = $1
    for (i = 2; i <= NF; i++) {
        if ($i > max) max = $i
        if ($i < min) min = $i
    }
    sum += (max - min)
}

END {
    print sum
}
