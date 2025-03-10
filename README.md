# NI-UMI Homework Assignments  

This repository contains multiple homework assignments for the NI-UMI course, each focusing on different AI-related tasks such as robot navigation, planning, and heuristic search.  

## 📌 Homework Overview  

### 1️⃣ [Robot Navigation in a 2D Space](NI-UMI/ukol_1/)  
- Implemented in **Python** using `matplotlib` and `shapely`.  
- The robot must navigate a **continuous 2D space** filled with polygonal obstacles from a start position to a target.  
- The shortest path is found using **A* search** with **Euclidean distance heuristic**.  
- 🔗 [Full task description](https://courses.fit.cvut.cz/NI-UMI/files/MI-UMI_seminar-01_problem-solving.pdf)  

---

### 2️⃣ [Vacuum Cleaner Navigation](NI-UMI/ukol_2/)  
- Implemented in **Python** using `matplotlib`.  
- The robot vacuum must visit and clean all dirty locations while minimizing travel distance.  
- Modeled as a **Traveling Salesman Problem (TSP)** and solved using **Steepest Ascent Hill Climbing**.  
- The algorithm runs multiple times with random initial solutions to escape local minima.  

---

### 3️⃣ [Monkey and Bananas Problem](NI-UMI/ukol_3/)  
- Implemented in **PDDL (Planning Domain Definition Language)**.  
- The monkey must move around a **linear environment**, push a box under hanging bananas, climb up, and grab them.  
- Additional challenges:  
  - Returning the environment to its original state after grabbing the bananas.  
  - Handling multiple boxes, some of which are too heavy to move.  

---

### 4️⃣ [Rush Hour Puzzle Solver](NI-UMI/ukol_4/)  
- Implemented in **PDDL**, with a **Jupyter notebook for animation**.  
- The goal is to move cars and trucks in a **6x6 parking lot** to free a path for the yellow car to exit.  
- The problem is formulated using constraints on **horizontal and vertical movements** of vehicles.  

---

### 5️⃣ [Robot Shakey Planning](NI-UMI/ukol_5/)  
- Implemented in **PDDL**.  
- Shakey the robot must move between rooms, manipulate boxes, and interact with light switches.  
- To turn on a light, Shakey must:  
  - Carry a box to the correct room.  
  - Climb onto the box to reach the switch.  
  - Switch the light on.  
- The plan ensures **Shakey successfully lights up Room 4**.  

---

## 📂 Repository Structure  
NI-UMI/ │── ukol_1/ # Robot navigation in 2D space │── ukol_2/ # Vacuum cleaner path planning │── ukol_3/ # Monkey and Bananas problem │── ukol_4/ # Rush Hour puzzle solver │── ukol_5/ # Robot Shakey planning

