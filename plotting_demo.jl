using Plots, Plots.Measures, LaTeXStrings

default(fontfamily = "Computer Modern", dpi=600)

x = range(0, 2π, length=1000)
y = @. sin(x)
z = @. asin(y)

tick_range = [0:π:2π;]
tick_labels = [L"0", L"\pi", L"2\pi"]

a=plot(x, y, 
    grid=false, 
    minorgrid=false, 
    label=L"\sin(x)", 
    margin=5mm, 
    legendfontsize=10,
    tickfontsize = 10
)

xticks!(a, (tick_range, tick_labels))
yticks!(a, -1:1:1)
xlabel!(a, L"x", guidefontsize=15)
ylabel!(a, L"\sin(x)", guidefontsize=15)

display(a)

b=plot(x, z, 
    grid=false, 
    minorgrid=false, 
    label=L"\sin^{-1}(y)", 
    margin=5mm, 
    legendfontsize=10,
    tickfontsize = 10
)

yticks!(b, ([-π/2:π/2:π/2;], [L"-\pi/2",L"0",L"\pi/2"]))
xlabel!(b, L"y=\sin(x)", guidefontsize=15)
ylabel!(b, L"\sin^{-1}(y)", guidefontsize=15)

#png(a, "a")
#png(b, "b")
