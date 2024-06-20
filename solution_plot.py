import networkx as nx
import matplotlib.pyplot as plt

def plot_solution(nodes, selected_route):
    G = nx.DiGraph()
    pos = {i: (nodes[i][0], nodes[i][1]) for i in range(len(nodes))}
    
    G.add_nodes_from(pos.keys())
    G.add_edges_from(selected_route)
    
    nx.draw(G, pos, with_labels=True, node_size=500, node_color='lightblue', font_size=10, font_weight='bold', arrows=True)
    
    plt.axhline(0, color='black', lw=1)

    plt.show()
    
        
    
    