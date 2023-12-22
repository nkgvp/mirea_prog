#= Задача 1
Дано: Робот находится в произвольной клетке ограниченного прямоугольного поля без внутренних перегородок и маркеров.
Результат: Робот — в исходном положении в центре прямого креста из маркеров, расставленных вплоть до внешней рамки.
=#

include("roblib.jl")
    #=
        invers(side::HorizonSide)
        movements!(r::Robot,side::HorizonSide,num_steps::Int)
        get_num_steps_movements!(r::Robot, side::HorizonSide)
        movements!(r::Robot,side::HorizonSide)
        moves!(r::Robot,side::HorizonSide)
        find_border!(r::Robot,direction_to_border::HorizonSide, direction_of_movement::HorizonSide)
    =#


    
 function mark_kross!(r::Robot)      
    for side in (Nord,West,Sud,Ost) 
        num_steps=get_num_steps_putmarkers!(r,side) 
        movements!(r,invers(side),num_steps) 
    end
    putmarker!(r) 
end
