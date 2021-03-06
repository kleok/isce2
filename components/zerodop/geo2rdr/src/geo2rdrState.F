!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
! Copyright 2010 California Institute of Technology. ALL RIGHTS RESERVED.
! 
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
! 
! http://www.apache.org/licenses/LICENSE-2.0
! 
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.
! 
! United States Government Sponsorship acknowledged. This software is subject to
! U.S. export control laws and regulations and has been classified as 'EAR99 NLR'
! (No [Export] License Required except when exporting to an embargoed country,
! end user, or in support of a prohibited end use). By downloading this software,
! the user agrees to comply with all applicable U.S. export laws and regulations.
! The user has the responsibility to obtain export licenses, or other export
! authority as may be required before exporting this software to any 'EAR99'
! embargoed foreign country or citizen of those countries.
!
! Author: Giangi Sacco
!~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        module geo2rdrState
            use poly1dModule
            use orbitModule

            !!Planet description
            double precision majorSemiAxis
            double precision eccentricitySquared

            !!Range spacing
            double precision drho
            double precision rho0

            !!Radar Geometry
            type(poly1dType) ::  dopAcc
            type(orbitType) :: orbit

            !!Acquisition properties
            double precision wvl
            double precision t0
            double precision prf
            integer length
            integer width
            integer ilrl

            !!Number of looks
            integer Nrnglooks
            integer Nazlooks

            !!DEM information
            integer demwidth
            integer demlength

            !!Bistatic flag
            logical bistatic

            !!Orbit method
            integer orbitMethod
            integer HERMITE_METHOD, SCH_METHOD, LEGENDRE_METHOD
            parameter(HERMITE_METHOD=0,SCH_METHOD=1,LEGENDRE_METHOD=2) 
        end module geo2rdrState 
