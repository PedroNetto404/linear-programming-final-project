import os

def log_solution(instance_name, solution):
    if solution is None:
        with open(f"./outputs/solution_{instance_name}.txt", "w") as file:
            file.write("Infeasible problem")
        return
    
    (
        objective_upper_bound,
        objective_lower_bound,
        runtime,
        relative_gap,
        node_count,
        routes,
        arrival_times,
        delay_times
    ) = solution
        
    log_file_content = f"""
instance_name: {instance_name}
objective_upper_bound: {objective_upper_bound}
objective_lower_bound: {objective_lower_bound}
runtime: {runtime}
relative_gap: {relative_gap}
node_count: {node_count}
routes: {' '.join(map(str, routes))}
arrival_times: {' '.join(map(str, arrival_times))}
delay_times: {' '.join(map(str, delay_times))}
"""
    
    if not os.path.exists("./outputs"):
      os.makedirs("./outputs")
    
    with open(f"./outputs/solution_{instance_name}.txt", "w") as file:
        file.write(log_file_content)


            