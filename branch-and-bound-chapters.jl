using JuMP
using Gurobi

# model
model = Model(Gurobi.Optimizer)

# Désactiver les coupes et activer les messages de sortie
set_optimizer_attribute(model, "Cuts", 0)
set_optimizer_attribute(model, "OutputFlag", 1)

# variables
@variable(model, x0>=0, Int)
@variable(model, x1>=0, Int)
@variable(model, x2>=0, Int)
@variable(model, x3>=0, Int)
@variable(model, x4>=0, Int)
@variable(model, x5>=0, Int)
@variable(model, x6>=0, Int)
@variable(model, x7>=0, Int)
@variable(model, x8>=0, Int)
@variable(model, x9>=0, Int)
@variable(model, x10>=0, Int)
@variable(model, x11>=0, Int)
@variable(model, x12>=0, Int)

# objective function
@objective(model, Max, x0+2*x1+3*x2+4*x3+5*x4+6*x5+7*x6+8*x7+9*x8+10*x9+11*x10+12*x11+13*x12)

# contraints
@constraint(model, x0+x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12<=7)
@constraint(model, x0<=1)
@constraint(model, x1<=1)
@constraint(model, x2<=1)
@constraint(model, x3<=1)
@constraint(model, x4<=1)
@constraint(model, x5<=1)
@constraint(model, x6<=1)
@constraint(model, x7<=1)
@constraint(model, x8<=1)
@constraint(model, x9<=1)
@constraint(model, x10<=1)
@constraint(model, x11<=1)
@constraint(model, x12<=1)
@constraint(model,x3<=x0)
@constraint(model,x3<=x1)
@constraint(model,x4<=x2)
@constraint(model,x4<=x3)
@constraint(model,x5<=x0)
@constraint(model,x5<=x1)
@constraint(model,x6<=x4)
@constraint(model,x6<=x5)
@constraint(model,x7<=x6)
@constraint(model,x8<=x2)
@constraint(model,x8<=x4)
@constraint(model,x9<=x7)
@constraint(model,x10<=x8)
@constraint(model,x11<=x1)
@constraint(model,x11<=x4)
@constraint(model,x12<=x10)
@constraint(model,x12<=x11)

# optimize
optimize!(model)
println("optimal value of x0: ", value(x0))
println("optimal value of x1: ", value(x1))
println("optimal value of x2: ", value(x2))
println("optimal value of x3: ", value(x3))
println("optimal value of x4: ", value(x4))
println("optimal value of x5: ", value(x5))
println("optimal value of x6: ", value(x6))
println("optimal value of x7: ", value(x7))
println("optimal value of x8: ", value(x8))
println("optimal value of x9: ", value(x9))
println("optimal value of x10: ", value(x10))
println("optimal value of x11: ", value(x11))
println("optimal value of x12: ", value(x12))
println("objective value: ", objective_value(model))

