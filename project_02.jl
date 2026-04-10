### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ f17103ea-06bf-11f1-a2b0-79e68ed152eb
md"""# Project_02 - Multibody kinematic modeling

![Dual slider kinematics project](https://raw.githubusercontent.com/cooperrc/me5180-project_02/refs/heads/main/dual-slider.svg)

In this project, a rigid bar is connected to two sliding pistons along
the diagonal tracks. As the pistons move along the tracks, the rigid bar rotates at a constant rate, $\dot{\theta}_3 = 2~rad/s$. The figure above has three _relative_ ccoordinate systems that move with the bodies:

1. $x_1-y_1-$ describes piston 1 position and orientation, $\theta_1$
2. $x_2-y_2-$ describes piston 2 position and orientation, $\theta_2$
3. $x_3-y_3-$ describes the rigid bar position and orientation, $\theta_3$

Each of the pistons are on tracks at $\pm 45^o$ and the rotating rigid
bar is 10 cm. The hinges are mounted to the center of the pistons
connecting the ends of the rigid bar. 
 
In this project, you need to 

1. determine constraint equations $C(\mathbf{q},~t)$
2. solve for the velocities, $\dot{q}$ and accelerations, $\ddot{q}$
3. visualize the motion of the system as the rigid bar goes through at least one full rotation
"""
# ╔═╡ c1a2b3c4-d5e6-47f8-9123-abcdef123456
md"""
## Constraint Equations

The constraint equations define the geometric conditions that must always be satisfied by the mechanism during motion. In this dual-slider system, each piston is restricted to move only along its assigned diagonal track. Because of this, the center of each piston cannot move freely in the plane, and its \(x\)- and \(y\)-coordinates must remain consistent with the equation of its track. In addition, the orientation of each piston is fixed by the direction of the guide track, so the piston angles remain constant throughout the motion.

The rigid bar adds another important constraint because its length remains constant at all times. Since the air is pinned to the centers of the two pistons, the distance between those connection points cannot change. This means the positions of the pistons msut always match the current position and orientation of the rigid bar. Together, these geometric relationships form the constraint equations of the system. These equations reduce the number of independent coordinates and make it possible to solve for the positions, velocities, and accelerations of the bodies as the bar rotates.
"""
# ╔═╡ 0d9be664-d7c5-4084-add2-25e5418742d6


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.4"
manifest_format = "2.0"
project_hash = "71853c6197a6a7f222db0f1978c7cb232b87c5ee"

[deps]
"""

# ╔═╡ Cell order:
# ╟─f17103ea-06bf-11f1-a2b0-79e68ed152eb
# ╠═0d9be664-d7c5-4084-add2-25e5418742d6
# ╟─c1a2b3c4-d5e6-47f8-9123-abcdef123456
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
