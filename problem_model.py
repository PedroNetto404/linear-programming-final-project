import math
import gurobipy

M = 10 ** 6

def get_distance(p1, p2):
    return math.sqrt((p1[0] - p2[0])**2 + (p1[1] - p2[1])**2)

def solve(location_data):
    location_data.append(location_data[0])
    location_count = len(location_data)
    
    model = gurobipy.Model()
    model.setParam('TimeLimit', 10)

    # Variáveis de decisão
    chosen_route = model.addVars(location_count, location_count, vtype=gurobipy.GRB.BINARY, name='chosen_route')
    arrival_time = model.addVars(location_count, vtype=gurobipy.GRB.CONTINUOUS, name='arrival_time', lb=0)
    delay_time = model.addVars(location_count, vtype=gurobipy.GRB.CONTINUOUS, name='delay_time', lb=0)

    # Função objetivo
    model.setObjective(
        gurobipy.quicksum(delay_time[i] for i in range(1, location_count - 1)),
        sense = gurobipy.GRB.MINIMIZE
    )

    # Restrições
    model.addConstrs(
        gurobipy.quicksum(chosen_route[i, j] for j in range(1, location_count) if i != j) == 1
        for i in range(0, location_count - 1)
    )
    model.addConstrs(
        gurobipy.quicksum(chosen_route[i, j] for i in range(location_count - 1) if i != j) == 1
        for j in range(1, location_count)
    )

    for i in range(0, location_count - 1):
        for j in range(1, location_count): 
            if i == j: 
                continue

            location_i = location_data[i]
            location_i_coords = (location_i[0], location_i[1])
            location_i_service_time = location_i[2]

            location_j = location_data[j]
            location_j_coords = (location_j[0], location_j[1])

            time_between_locations = get_distance(location_i_coords, location_j_coords)

            model.addConstr(
                arrival_time[j] >= 
                    arrival_time[i] +
                    time_between_locations +
                    location_i_service_time -
                    M * (1 - chosen_route[i,j])
            )
            
    model.addConstrs(
        delay_time[i] >= arrival_time[i] - location_data[i][3]
        for i in range(1, location_count - 1)
    )
            
    model.optimize()

    if model.status != gurobipy.GRB.OPTIMAL:
        return None

    routes = []

    for i in range(location_count):
        for j in range(location_count):
            if chosen_route[i, j].X > 0.5:
                routes.append((i, j))


    # return model.ObjVal, routes, [arrival_time[i].X for i in range(location_count)]
    return (
        # Limite superior da função objetivo
        model.ObjVal,
        # Limite inferior da função objetivo
        model.ObjBound,
        # Tempo de execução
        model.Runtime,
        # Gap Relativo
        model.MIPGap,
        # Número de nós
        model.NodeCount,
        # Rotas escolhidas
        routes,
        # Tempos de chegada em cada local
        [arrival_time[i].X for i in range(location_count)],
        # Tempo de atraso em cada local
        [delay_time[i].X for i in range(location_count)]
    )