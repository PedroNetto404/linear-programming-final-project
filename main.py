import instance_reader
import problem_model

instances = instance_reader.read_instances()

for instance in instances:
    delay_total, choosed_routes, arrival_times = problem_model.solve(instance)

    print(f'Instance: {instance}')
    print(f'Delay total: {delay_total}')
    print(f'Chosen routes: {choosed_routes}')

    print('Arrival times:')
    for i, arrival_time in enumerate(arrival_times):
        print(f'Location {i}: {arrival_time}')
