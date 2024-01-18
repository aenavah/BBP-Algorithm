FC = gfortran
FFLAGS = -g -Wall -Wextra -Wimplicit-interface -fmax-errors=5 -fdefault-real-8

OBJ = BBP_Algorithm.o

BBP_Algorithm.ex: $(OBJ)
	$(FC) $(FFLAGS) -o $@ $^

%.o: %.f90
	$(FC) $(FFLAGS) -c $<

.PHONY: clean

clean:
	rm -f BBP_Algorithm.ex *.o *.mod *~