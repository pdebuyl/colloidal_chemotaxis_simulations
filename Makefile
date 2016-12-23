
RUN=test
EPS=1.00

active_sphere_EPS$(EPS)_RUN$(RUN): 
	mkdir active_sphere_EPS$(EPS)_RUN$(RUN)

active_sphere: active_sphere_EPS$(EPS)_RUN$(RUN)/active_sphere.h5

active_sphere_EPS$(EPS)_RUN$(RUN)/active_sphere.h5: active_sphere.p | active_sphere_EPS$(EPS)_RUN$(RUN)
	sftmpl active_sphere.p --EPS $(EPS) > active_sphere_EPS$(EPS)_RUN$(RUN)/active_sphere.p
	(cd active_sphere_EPS$(EPS)_RUN$(RUN) ; rmpcdmd run chemotactic_cell active_sphere.p active_sphere.h5 auto)

