import math
import gurobipy

M = 10 ** 6

def get_distance(p1, p2):
    return math.sqrt((p1[0] - p2[0])**2 + (p1[1] - p2[1])**2)

def solve(instance):
    location_count, location_data = len(instance), instance
    
    model = gurobipy.Model()
    
    # Variáveis de decisão
    ## chosen_route[i, j] = 1 se a rota escolhida vai de i para j, 0 caso contrário
    chosen_route = model.addVars(location_count, location_count, vtype=gurobipy.GRB.BINARY, name='chosen_route')
    ## arrival_time[i] = tempo de chegada na localidade i
    arrival_time = model.addVars(location_count, name='arrival_time')
    ## delay_time[i] = tempo de atraso na localidade i
    delay_time = model.addVars(location_count, name='delay_time')

    # Função objetivo
    ## Minimizando o tempo de atraso total fazemos com que o valor da multa seja minimizado    
    model.setObjective(
        gurobipy.quicksum(delay_time[i] for i in range(location_count)),
        sense = gurobipy.GRB.MINIMIZE
    )

    # Restrições
    ## Cada localidade deve ser visitada exatamente uma vez
    ### Devemos sair de cada localidade i uma única vez 
    model.addConstrs(
        gurobipy.quicksum(chosen_route[i, j] for j in range(location_count)) == 1
        for i in range(location_count)
    )
    ### Devemos chegar em cada localidade j uma única vez
    model.addConstrs(
        gurobipy.quicksum(chosen_route[j, i] for j in range(location_count)) == 1
        for i in range(location_count)
    )

    ## Garante que não haja sub-rotas
    for i in range(location_count):
        for j in range(location_count): 
            if i == j: 
                continue

            placeI = location_data[i]
            placeICoord = (placeI[0], placeI[1])
            placeIServiceTime = placeI[3]

            placeJ = location_data[j]
            placeJCoord = (placeJ[0], placeJ[1])

            model.addConstr(
                arrival_time[j] >= 
                    arrival_time[i] + 
                    placeIServiceTime + 
                    get_distance(placeICoord, placeJCoord) + 
                    M * (1 - chosen_route[i, j])
            )

    ## Garante que o tempo de chegada em cada localidade seja menor ou igual ao tempo máximo permitido,
    ##considerando o tempo de atraso
    for i in range(location_count):
        maxTimeToLocation = location_data[i][2]

        model.addConstr(
            arrival_time[i] <= maxTimeToLocation + delay_time[i]
        )

    ## Garante que o tempo de atraso não seja negativo
    model.addConstrs(
        delay_time[i] >= 0
        for i in range(location_count)
    )

    ## Garante que o tempo de chegada em cada localidade
    ##seja não negativo e que o tempo de chegada na primeira localidade seja 0 (início da rota) 
    model.addConstr(arrival_time[0] == 0)
    model.addConstrs(arrival_time[i] > 0 for i in range(1, location_count))

    model.optimize()

    return model.objVal