import instance_reader
import problem_model
import multiprocessing
import solution_logger

if __name__ == "__main__":
    instances = instance_reader.read_instances()

    with multiprocessing.Pool() as pool:
        results = pool.map(problem_model.solve, list(map(lambda x: x[1], instances)))

        for instance, result in zip(instances, results):
            instance_name, _ = instance
            solution_logger.log_solution(instance_name, result)