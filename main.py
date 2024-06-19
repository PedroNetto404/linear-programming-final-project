import instance_reader
import problem_model
import solution_plot

instances = instance_reader.read_instances()

for index, instance in enumerate(instances):
    delay_total, choosed_routes, arrival_times = problem_model.solve(instance)
    if delay_total is None:
        print(f'Instância {index} não foi possível resolver')
        continue

    print(f'Instância {index} resolvida')
    print(f'Tempo total de atraso: {delay_total}')
    print('Rotas escolhidas: ' + ' '.join([str(route) for route in choosed_routes]))
    print('Tempos de chegada: ' + ' '.join([f'{arrival_time:.2f}' for arrival_time in arrival_times]))
    
    print('')

    solution_plot.plot_solution(instance, choosed_routes)
    
    input('Pressione enter para continuar...')
    
    print('')

    
