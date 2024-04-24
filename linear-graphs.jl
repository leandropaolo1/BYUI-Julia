using Plots

function slope_intercept(x1, y1, x2, y2)
    slope = round((y2 - y1) / (x2 - x1), digits=2)
    b = y1 - slope * x1
    y_intercept = slope * 0 + b
    formula = "y = $slope x + $b"

    return Dict(
        "y_intercept" => y_intercept,
        "formula" => formula,
        "slope" => slope)
end


# Example points
x1, y1 = 39, 19.54
x2, y2 = 71, 15.06

# Calculate slope and intercept
result = slope_intercept(x1, y1, x2, y2)
slope = result["slope"]
y_intercept = result["y_intercept"]

# Generate x values
x_values = collect(range(x1, stop=x2, length=100))

# Calculate corresponding y values
y_values = slope * x_values .+ y_intercept

# Plot the line

plot(x_values, y_values, label=result["formula"], xlabel="x", ylabel="y", title="Plot of the line")