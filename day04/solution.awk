function join(array,    result, i) {
    for (i in array)
        result = result array[i]
    return result
}

{ all++ }

{
    for (i = 1; i <= NF; i++) {
        a[$i]++;
        if (a[$i] > 1) { countA++; break }
    }

    delete a
}

{

    for (i = 1; i <= NF; i++) {
        split($i, b1, "")
        asort(b1, b2)
        b3 = join(b2)
        b[b3]++
        if (b[b3] > 1) { countB++; break }
    }

    delete b
}

END {
    print "A: ", all - countA
    print "B: ", all - countB
}
