!     Calculate omega and theta using the
!     Euler-Cromer method for solving diff equations.
      program simple_pendulum
      implicit none
      integer, parameter :: n = 100
      real, parameter :: g = 9.81
      real, parameter :: l = 1.0
      real, dimension(n) :: w, t
      real, dimension(n) :: theta
      real :: dt
      ! define w_i = theta_i = t_i = 0
      integer :: i
      print *, " dt = "
      read(5,*) dt
      print *, " theta(i) = "
      read(5,*) theta(1)
      w(1) = 0
      t(1) = 0
      do i = 1, n-1
         w(i+1) = w(i) - (g/l) * theta(i) * dt
         theta(i+1) = theta(i) + w(i+1) * dt
         t(i+1) = t(i) + dt
      end do  
      open(1, file = "data.dat", status = "new")
      do i = 1, n
         write(1,*) t(i), theta(i)
      end do
      close(1) 
      end
