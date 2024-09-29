using JuMP
using Gurobi

# model
model = Model(Gurobi.Optimizer)

# variables
@variable(model, x0>=0)
@variable(model, x1>=0)
@variable(model, x2>=0)
@variable(model, x3>=0)

# objective function
@objective(model, Max, x0+2*x1+3*x2+4*x3)

# contraints
@constraint(model, x0+x1+x2+x3<=2)
@constraint(model, x2<=x0)
@constraint(model, x2<=x1)
@constraint(model, x3<=x1)
@constraint(model, x0<=1)
@constraint(model, x1<=1)
@constraint(model, x2<=1)
@constraint(model, x3<=1)

# optimize
optimize!(model)
println("optimal value of x0: ", value(x0))
println("optimal value of x1: ", value(x1))
println("optimal value of x2: ", value(x2))
println("optimal value of x3: ", value(x3))
println("objective value: ", objective_value(model))