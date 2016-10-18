subroutine example(i,j,k,p,q,r,s,a,b,c)
	IMPLICIT NONE
	integer i,j,k,p,q,r,s
	integer ii,jj,kk,pp,qq,rr,ss
	double precision a(i,k,j,p,q,r)
	double precision b(s,r,q,k)
	double precision c(i,j,p,s)
!$omp parallel do private(rr,qq,pp,jj,ii,kk,ss) collapse(3)
	do rr=1,r
		do qq=1,q
			do pp=1,p
				do jj=1,j
					do ss=1,s
						do ii=1,i
							do kk=1,k
								a(ii,kk,jj,pp,qq,rr)=a(ii,kk,jj,pp,qq,rr) + b(ss,rr,qq,kk)*c(ii,jj,pp,ss)
							enddo
						enddo
					enddo
				enddo
			enddo
		enddo  
	enddo
!$omp end parallel do
!$omp parallel do private(rr,qq,pp,jj,ii,kk,ss) collapse(3)
	do rr=1,r
		do qq=1,q
			do pp=1,p
				do jj=1,j
					do ss=1,s
						do kk=1,k
							do ii=1,i
								a(ii,kk,jj,pp,qq,rr)=a(ii,kk,jj,pp,qq,rr) + b(ss,rr,qq,kk)*c(ii,jj,pp,ss)
							enddo
						enddo
					enddo
				enddo
			enddo
		enddo  
	enddo
!$omp end parallel do
	return
end
