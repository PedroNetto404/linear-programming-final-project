import networkx as nx
import matplotlib.pyplot as plt

def plot_solution(instance, routes):
    G = nx.DiGraph()
    pos = {i: (instance[i][0], instance[i][1]) for i in range(len(instance))}
    
    G.add_nodes_from(pos.keys())
    G.add_edges_from(routes)
    
    nx.draw(G, pos, with_labels=True, node_size=500, node_color='lightblue', font_size=10, font_weight='bold', arrows=True)
    plt.show()