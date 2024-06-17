import instance_reader
import problem_model

instances = instance_reader.read_instances()

for instance in instances:
    problem_model.solve(instance)