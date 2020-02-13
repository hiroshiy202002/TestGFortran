program hello
   implicit none
   integer, parameter:: n = 4
   double precision, dimension(0:n):: xi
   integer i
   write(*,*) "hello!!!"
   call gausslobattopoints( n, xi )
   do i = 0, n
      write(*,*) xi(i)
   end do
   stop
end program hello

subroutine gausslobattopoints( n, xi )
   implicit none
   integer n
   double precision, dimension(0:n):: xi
   double precision, parameter:: pi = dacos(-1.0d0)
   integer i
   do i = 0, n
      xi(i) = dcos(pi*dble(i)/dble(n))
   end do
   return
end subroutine gausslobattopoints
