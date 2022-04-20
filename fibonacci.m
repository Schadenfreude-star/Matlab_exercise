function res = fibonacci(n)
if n < 0
    error('n must be non-negative');
end
if n < 2
    res = n;
    return
end
res = fibonacci(n-1) + fibonacci(n-2);
end