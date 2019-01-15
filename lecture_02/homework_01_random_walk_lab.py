"""
Homework 01 - Random Walk Lab
"""

## import stuff
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d  # for 3d plots


## 1. Random walk in one dimension.
"""
Write a program simulating a one-dimensional random walk amongst 100 discrete sites with the random walker having equal probability to step in either direction at each time step. Treat the edges as reflecting (i.e. the walker steps back the other direction with 100% probability). Start 1000 independent walkers distributed uniformly at sites 11-15 and observe how they distribute as time progresses. Make the probability of going left-vs-right a variable in the program so that you can play around with it. Use plots to visually convey what is going on.
"""

num_sites = 100
num_walkers = 1001
num_time_steps = 5000
prob_to_step_right = 0.5

# walkers is a 2d array where rows are sites and columns are time points.
# Each column holds the number of walkers at each site for that time point.
walkers = np.zeros((num_sites, num_time_steps), dtype=int)

# start walkers off in sites 11-15
if num_walkers % 5 != 0:
    error("num_walkers must be a multiple of 5")
walkers[11:16] = num_walkers / 5


## 2. Random walk in two dimensions.
"""
Write a program simulating a two-dimensional random walk amongst 30x30 discrete sites with 1000 independent walkers initially distributed uniformly at sites 11-12 in each dimension with 25% probability to step in each direction and reflecting boundaries. Use plots to visually convey what is going on.
"""


## 3. Random walk in one dimension.
"""
Same as #1, but make the probability of going left-vs-right unequal, and also make it so that the left-vs-right probability swaps every time a walker reflects off of a boundary.
"""


## 4. Random walk in two dimensions.
"""
Same as #2, but make the probabilities of going in each direction unequal and make it so that moving off of one edge wraps around to the opposite edge.
"""


## 5. Random walk in three dimensions.
"""
Write a program simulating a three-dimensional random walk amongst 30x30x30 discrete sites with 1000 independent walkers initially distributed uniformly at sites 11-12 in each dimension with equal probability to step in each direction and boundaries that wrap to the opposite side. Use plots to visually convey what is going on.
"""


## 6. Random walk in three dimensions.
"""
Write a program simulating a three-dimensional random walk in a continuous space. Let 1000 independent walkers all start at random positions within a cube with corners at (0,0,0) and (1,1,1). At each time step each walker will move in a random direction by a random amount between 0-0.1. Use plots to visually convey what is going on.
"""

