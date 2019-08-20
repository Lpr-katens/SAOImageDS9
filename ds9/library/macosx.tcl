#  Copyright (C) 1999-2018
#  Smithsonian Astrophysical Observatory, Cambridge, MA, USA
#  For conditions of distribution and use, see copyright notice in "copyright"

package provide DS9 1.0

proc MacOSXGetLocale {} {
    return [macosx locale]
}

proc MacOSXPrint {} {
    global ds9

# we need to be realized
    RealizeDS9
# need the colorbar levels updated
    UpdateColormapLevel

    if {[catch {macosx pm print begin [winfo width $ds9(canvas)] [winfo height $ds9(canvas)] yes}]} {
	Error "bad"
    } else {
	Info "good"
    }

    if {0} {
	foreach f $ds9(frames) {
	    $f macosx print
	}
	colorbar macosx print
	colorbarrgb macosx print
	macosx pm print end
    }
}

proc MacOSXPrintPre {} {
    global ds9

    if {[macosx pm print begin [winfo width $ds9(canvas)] [winfo height $ds9(canvas)] no]} {
	foreach f $ds9(frames) {
	    $f macosx print
	}
	colorbar macosx print
	colorbarrgb macosx print
	macosx pm print end
    }
}

proc MacOSXPageSetup {} {
    macosx pm pagesetup
}
