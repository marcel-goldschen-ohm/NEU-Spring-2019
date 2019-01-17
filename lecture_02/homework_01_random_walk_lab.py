"""
Homework 01 - Random Walk Lab
"""

#%% import stuff
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d  # for 3d plots
# import mpld3  # for 3d plots
# mpld3.enable_notebook()
import timeit




#%% 1. Random walk in one dimension.
"""
Write a program simulating a one-dimensional random walk amongst 100 discrete sites with the random walker having equal probability to step in either direction at each time step. Treat the edges as reflecting (i.e. the walker steps back the other direction with 100% probability). Start 1000 independent walkers distributed uniformly at sites 11-15 and observe how they distribute as time progresses. Make the probability of going left-vs-right a variable in the program so that you can play around with it. Use plots to visually convey what is going on.
"""

print("test")

num_sites = 100
num_walkers = 1000
num_time_steps = 3000
prob_to_step_right = 0.5  # right is toward sites with higher index

# walkers is a 2d array where rows are sites and columns are time points.
# Each column holds the number of walkers at each site for that time point.
walkers = np.zeros((num_sites, num_time_steps), dtype=int)

# start walkers off in sites 11-15
assert num_walkers % 5 == 0  # make sure that num_walkers is mult of 5
walkers[11:16, 0] = num_walkers / 5

# visualize our starting condition
# plt.plot(walkers[:, 0])

# simulate random walks
t0 = timeit.default_timer()
for t in range(1, num_time_steps):
    # for each walker in each site, randomly move it left or right
    for site in range(num_sites):
        num_walkers_at_site = walkers[site, t - 1]
        if num_walkers_at_site == 0:
            continue
        if site == 0:
            # move all walkers right
            walkers[site + 1, t] += num_walkers_at_site
        elif site == num_sites - 1:
            # move all walkers left
            walkers[site - 1, t] += num_walkers_at_site
        else:
            # get a random number for each walker for deciding if it moves left or right
            rand_bools = np.random.rand(num_walkers_at_site) >= prob_to_step_right
            num_moving_left = np.where(rand_bools < prob_to_step_right)[0].size
            num_moving_right = num_walkers_at_site - num_moving_left
            walkers[site - 1, t] += num_moving_left
            walkers[site + 1, t] += num_moving_right
t1 = timeit.default_timer()
print("simulation sec:", t1 - t0)

#%% plot distribution of walker positions colored by timestep
# Only plot a few of the timesteps, otherwise graphics will bog down.
time_steps = [0, 2, 5, 50, 2000, num_time_steps - 1]
fig = plt.figure()
for t in time_steps:
    plt.plot(walkers[:, t])
plt.xlabel('Position')
plt.ylabel('Number of Walkers')
plt.title('Walker positions at various time steps')
plt.legend(time_steps)




#%% 2. Random walk in two dimensions.
"""
Write a program simulating a two-dimensional random walk amongst 30x30 discrete sites with 1000 independent walkers initially distributed uniformly at sites 11-12 in each dimension with 25% probability to step in each direction and reflecting boundaries. Use plots to visually convey what is going on.
"""

num_sites_x = 30
num_sites_y = 30
num_walkers = 1000

# walkers is a 3d array where walkers[t,x,y] is the number of walkers at time t at position (x,y).
# For now, we'll initialize only a single time step for the starting condition.
walkers = np.zeros((1, num_sites_x, num_sites_y), dtype=int)

# start walkers off in sites 11-12
assert num_walkers % 4 == 0  # make sure that num_walkers is mult of 4
walkers[0, 11:13, 11:13] = num_walkers / 4

#%% simulate random walks
num_time_steps = 100

# Allocate memory for time steps.
new_memory = np.zeros((num_time_steps, num_sites_x, num_sites_y), dtype=int)
walkers = np.concatenate((walkers, new_memory), axis=0)


t0 = timeit.default_timer()
for t in range(1, num_time_steps):
    


t1 = timeit.default_timer()
print("simulation sec:", t1 - t0)






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
