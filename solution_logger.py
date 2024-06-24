import os
import datetime

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
created_at: {datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")}
instance_name: {instance_name}
objective_upper_bound: {f"{objective_upper_bound:.2f}"}
objective_lower_bound: {f"{objective_lower_bound:.2f}"}
runtime: {runtime}
relative_gap: {f"{relative_gap:.2f}"}
node_count: {node_count}
routes: {' '.join(map(str, routes))}
arrival_times: {' '.join(map(lambda x: f"{x:.2f}", arrival_times))}
delay_times: {' '.join(map(lambda x: f"{x:.2f}", delay_times))}
"""
    
    if not os.path.exists("./outputs"):
      os.makedirs("./outputs")
    
    with open(f"./outputs/solution_{instance_name}.txt", "w") as file:
        file.write(log_file_content)


            