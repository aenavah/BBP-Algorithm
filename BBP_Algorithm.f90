PROGRAM BBP_Algorithm
implicit none

integer :: n = 0
real :: threshold, pi_approx = 0.0,  pi_true = acos(-1.d0)

open(20, file = "input.dat")
read(20, *) threshold
close(20)
write(*,*) threshold
call threshold_crit(threshold, pi_approx, n)

CONTAINS

  function next_iteration(n) result(iteration)
    integer, intent(in) :: n 
    real :: iteration
    iteration = (16.0 ** (-n))*((4.0/((8.0*n)+1.0)) - 2.0/((8.0*n)+4.0) - 1.0/((8.0*n)+5.0) - 1.0/((8.0*n)+6.0))
  end function next_iteration

  subroutine threshold_crit (threshold, pi_approx, n)
    real, intent(in) :: threshold
    real, intent(in out) :: pi_approx  
    integer, intent(in out) :: n
    real :: diff, current_iteration

    diff = 1.0
    !if error between approx pi and actual pi is greater than defined threshold
    do while (diff > threshold) 
      diff = abs(pi_approx - pi_true)
      current_iteration = next_iteration(n)
      pi_approx = pi_approx + current_iteration
      n  = n + 1 
      write(*,*) diff
    end do 
    
  write(*,*) "n: ", n
  write(*,*) "Error: ", diff  
  end subroutine threshold_crit 

end PROGRAM BBP_Algorithm