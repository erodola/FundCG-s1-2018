## Fundamentals of Computer Graphics

Course material

### News

- **26/10/2018:** There will be some live coding on Mon 29 Oct: bring your laptop if you want to test things live.

### Logistics

**Who:** Prof. Emanuele Rodolà

**When:** Mondays 14:00-16:30 and Thursdays 08:00-10:30 (see the [official schedule](https://www.studiareinformatica.uniroma1.it/laurea-magistrale/orario-lezioni))

**Where:** Aula Magna - Alfa - Sociologia, via Salaria 113

**Office Hours:** Drop me an email at _my-last-name-without-accent@di.uniroma1.it_

### Pre-requisites

Fundamentals of **programming is a must-have**, since there are coding assignments; there is no mandatory language, although lecture material will prefer **Matlab**. Linear algebra, calculus and numerical methods are nice-to-have, but not essential; the key concepts will be reviewed throughout the course.

### Syllabus

The course will cover topics of 3D shape representation, analysis, processing, matching, and modeling. An emphasis will be put on discrete geometry processing algorithms with applications in computer vision and graphics. Shape rendering and visualization will also be touched upon. The course will start from scratch by reviewing the key mathematical concepts and will proceed step by step up to the most recent advances in the area. Invited lectures from prominent scientists in the field are also expected.

### Text book and reading material

The lectures are not based on any text book in particular. Reading material suggested throughout the lectures is listed here:

- [A15] Axler, "Linear algebra done right - 3rd edition". Springer, 2015.
- [BBI01] Burago, Burago, Ivanov, "A course in metric geometry". AMS, 2001.
- [POV] [POV-Ray reference](http://www.povray.org/documentation/3.7.0/r3_0.html)

### Grading

The course will be graded with a **mid-term written exam (Nov 05) and a final project**. The final project will be discussed in an oral examination, and may fall into one of these categories:

- In-depth survey of a topic related to the syllabus
- Coding assignment plus report

All written reports must be delivered in English. A list of topics / coding projects will be provided at a later time. 

### Lectures

**Date** | **Topic** | **Reading** | **Code & Data**
------------ | ------------- | ------------ | ------------
| | |
Mon 24 Sep | Introduction; Shape representation | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/24.09_intro/01-intro.pdf) | [cat0.off](https://github.com/erodola/FundCG-s1-2018/raw/master/24.09_intro/code/cat0.off) ; [load_off.m](https://github.com/erodola/FundCG-s1-2018/raw/master/24.09_intro/code/load_off.m) ; [save_as_off.m](https://github.com/erodola/FundCG-s1-2018/raw/master/24.09_intro/code/save_as_off.m) ; [calc_tri_areas.m](https://github.com/erodola/FundCG-s1-2018/raw/master/24.09_intro/code/calc_tri_areas.m) ; [calc_boundary_edges.m](https://github.com/erodola/FundCG-s1-2018/raw/master/24.09_intro/code/calc_boundary_edges.m)
| | |
Thu 27 Sep | Metric geometry | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/27.09_metric/02-metric.pdf) | [fps_euclidean.m](https://github.com/erodola/FundCG-s1-2018/raw/master/27.09_metric/code/fps_euclidean.m) ; [voronoi_euclidean.m](https://github.com/erodola/FundCG-s1-2018/raw/master/27.09_metric/code/voronoi_euclidean.m)
| | |
Mon 01 Oct | Euclidean embeddings | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/01.10_mds/03-mds.pdf) | [sphere.off](https://github.com/erodola/FundCG-s1-2018/raw/master/01.10_mds/code/sphere.off) ; [tr_reg_000.off](https://github.com/erodola/FundCG-s1-2018/raw/master/01.10_mds/code/tr_reg_000.off) ; [geodesic distances for tr_reg_000.off](https://www.dropbox.com/s/v66jvqvxvogn0o7/tr_reg_000.D.mat?dl=0)
| | |
Thu 04 Oct | Shape visualization I; Piecewise-linear approximation | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/04.10_viz/04-visualization.pdf) | [cat_partial.off](https://github.com/erodola/FundCG-s1-2018/raw/master/04.10_viz/code/cat_partial.off)
| | |
Mon 08 Oct | Recap of linear algebra I | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/08.10_linalg/05-linalg.pdf) ; [A15] | [bunny.off](https://github.com/erodola/FundCG-s1-2018/raw/master/08.10_linalg/code/bunny.off)
| | |
Thu 11 Oct | Assignment problems | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/11.10_qap/06-assignment.pdf) ; [RL11](http://www.pcl-users.org/file/n4037867/Rusinkiewicz_Effcient_Variants_of_ICP.pdf) ; [BBI01] | [tr_reg_001.off](https://github.com/erodola/FundCG-s1-2018/raw/master/11.10_qap/code/tr_reg_001.off) ; [tr_reg_002.off](https://github.com/erodola/FundCG-s1-2018/raw/master/11.10_qap/code/tr_reg_002.off) ; [tr_reg_003.off](https://github.com/erodola/FundCG-s1-2018/raw/master/11.10_qap/code/tr_reg_003.off) ; [bun000.off](https://github.com/erodola/FundCG-s1-2018/raw/master/11.10_qap/code/bun000.off) ; [bun045.off](https://github.com/erodola/FundCG-s1-2018/raw/master/11.10_qap/code/bun045.off)
| | |
Mon 15 Oct | Shape visualization II | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/15.10_viz2/07-visualization2.pdf) ; [POV] | [cat2.off](https://github.com/erodola/FundCG-s1-2018/raw/master/15.10_viz2/code/cat2.off) ; [load_mesh.inc](https://github.com/erodola/FundCG-s1-2018/raw/master/15.10_viz2/code/load_mesh.inc) ; [save_mesh_povray.m](https://github.com/erodola/FundCG-s1-2018/raw/master/15.10_viz2/code/save_mesh_povray.m) ; [demo.m](https://github.com/erodola/FundCG-s1-2018/raw/master/15.10_viz2/code/demo.m) ; [render.pov](https://github.com/erodola/FundCG-s1-2018/raw/master/15.10_viz2/code/render.pov)
| | |
Thu 18 Oct | Recap of linear algebra II | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/18.10_linalg2/08-linalg2.pdf) ; [A15] | [tr_reg_010.off](https://github.com/erodola/FundCG-s1-2018/raw/master/18.10_linalg2/code/tr_reg_010.off) ; [tr_reg_031.off](https://github.com/erodola/FundCG-s1-2018/raw/master/18.10_linalg2/code/tr_reg_031.off)
| | |
Thu 25 Oct | Wrap-up | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/25.10_wrapup/09-wrapup.pdf) | [dog0.off](https://github.com/erodola/FundCG-s1-2018/raw/master/25.10_wrapup/code/dog0.off) ; [dog.sym.labels](https://github.com/erodola/FundCG-s1-2018/raw/master/25.10_wrapup/code/dog.sym.labels)
| | |
Mon 29 Oct | Mesh processing I | [slides](https://github.com/erodola/FundCG-s1-2018/raw/master/29.10_proc/10-processing.pdf) ; [SC04](https://igl.ethz.ch/projects/Laplacian-mesh-processing/ls-meshes/ls-meshes.pdf) |
| | |
Mon 05 Nov | **Midterm evaluation** | |
| | |
