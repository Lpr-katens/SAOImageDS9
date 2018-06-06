#  Copyright (C) 1999-2018
#  Smithsonian Astrophysical Observatory, Cambridge, MA, USA
#  For conditions of distribution and use, see copyright notice in "copyright"

package provide DS9 1.0

source $ds9(root)/library/2mass.tcl
source $ds9(root)/library/3d.tcl
source $ds9(root)/library/array.tcl
source $ds9(root)/library/analysis.tcl
source $ds9(root)/library/analysisparam.tcl
source $ds9(root)/library/annulus.tcl
source $ds9(root)/library/ar.tcl
source $ds9(root)/library/backup.tcl
source $ds9(root)/library/bin.tcl
source $ds9(root)/library/block.tcl
source $ds9(root)/library/box.tcl
source $ds9(root)/library/boxannulus.tcl
source $ds9(root)/library/bpanda.tcl
source $ds9(root)/library/buttons.tcl
source $ds9(root)/library/cat.tcl
source $ds9(root)/library/catcds.tcl
source $ds9(root)/library/catcdssrch.tcl
source $ds9(root)/library/catcdssrchdialog.tcl
source $ds9(root)/library/catcmd.tcl
source $ds9(root)/library/catcxc.tcl
source $ds9(root)/library/catdialog.tcl
source $ds9(root)/library/catflt.tcl
source $ds9(root)/library/catmatch.tcl
source $ds9(root)/library/catned.tcl
source $ds9(root)/library/catopt.tcl
source $ds9(root)/library/catplot.tcl
source $ds9(root)/library/catreg.tcl
source $ds9(root)/library/catsdss.tcl
source $ds9(root)/library/catsimbad.tcl
source $ds9(root)/library/catskybot.tcl
source $ds9(root)/library/catsym.tcl
source $ds9(root)/library/catvot.tcl
source $ds9(root)/library/centroid.tcl
source $ds9(root)/library/circle.tcl
source $ds9(root)/library/colorbar.tcl
source $ds9(root)/library/comm.tcl
source $ds9(root)/library/command.tcl
source $ds9(root)/library/compass.tcl
source $ds9(root)/library/composite.tcl
source $ds9(root)/library/contour.tcl
source $ds9(root)/library/convert.tcl
source $ds9(root)/library/coord.tcl
source $ds9(root)/library/cpanda.tcl
source $ds9(root)/library/crop.tcl
source $ds9(root)/library/crosshair.tcl
source $ds9(root)/library/cube.tcl
source $ds9(root)/library/debug.tcl
source $ds9(root)/library/dialog.tcl
source $ds9(root)/library/ellipse.tcl
source $ds9(root)/library/ellipseannulus.tcl
source $ds9(root)/library/envi.tcl
source $ds9(root)/library/epanda.tcl
source $ds9(root)/library/error.tcl
source $ds9(root)/library/eso.tcl
source $ds9(root)/library/examine.tcl
source $ds9(root)/library/export.tcl
source $ds9(root)/library/external.tcl
source $ds9(root)/library/file.tcl
source $ds9(root)/library/fits.tcl
source $ds9(root)/library/frame.tcl
source $ds9(root)/library/graph.tcl
source $ds9(root)/library/grid.tcl
source $ds9(root)/library/group.tcl
source $ds9(root)/library/header.tcl
source $ds9(root)/library/help.tcl
source $ds9(root)/library/http.tcl
source $ds9(root)/library/hv.tcl
source $ds9(root)/library/hvform.tcl
source $ds9(root)/library/hvsup.tcl
source $ds9(root)/library/iexam.tcl
source $ds9(root)/library/iis.tcl
source $ds9(root)/library/ime.tcl
source $ds9(root)/library/imgsvr.tcl
source $ds9(root)/library/import.tcl
source $ds9(root)/library/info.tcl
source $ds9(root)/library/layout.tcl
source $ds9(root)/library/line.tcl
source $ds9(root)/library/load.tcl
source $ds9(root)/library/magnifier.tcl
source $ds9(root)/library/marker.tcl
source $ds9(root)/library/markeranalysishist.tcl
source $ds9(root)/library/markeranalysispanda.tcl
source $ds9(root)/library/markeranalysisplot2d.tcl
source $ds9(root)/library/markeranalysisplot3d.tcl
source $ds9(root)/library/markeranalysisradial.tcl
source $ds9(root)/library/markeranalysisstats.tcl
source $ds9(root)/library/markerbase.tcl
source $ds9(root)/library/markerbaseannulus.tcl
source $ds9(root)/library/markerbaseannulusrect.tcl
source $ds9(root)/library/markerbasecenter.tcl
source $ds9(root)/library/markerbaseline.tcl
source $ds9(root)/library/markerbasepanda.tcl
source $ds9(root)/library/markerbasepandarect.tcl
source $ds9(root)/library/markerdialog.tcl
source $ds9(root)/library/mask.tcl
source $ds9(root)/library/manalysis.tcl
source $ds9(root)/library/mbin.tcl
source $ds9(root)/library/mcolor.tcl
source $ds9(root)/library/mecube.tcl
source $ds9(root)/library/medit.tcl
source $ds9(root)/library/menu.tcl
source $ds9(root)/library/mfile.tcl
source $ds9(root)/library/mframe.tcl
source $ds9(root)/library/mhelp.tcl
source $ds9(root)/library/mosaicimage.tcl
source $ds9(root)/library/mosaicimageiraf.tcl
source $ds9(root)/library/mosaicimagewcs.tcl
source $ds9(root)/library/mosaicimagewfpc2.tcl
source $ds9(root)/library/mosaic.tcl
source $ds9(root)/library/mosaiciraf.tcl
source $ds9(root)/library/mosaicwcs.tcl
source $ds9(root)/library/movie.tcl
source $ds9(root)/library/mregion.tcl
source $ds9(root)/library/mscale.tcl
source $ds9(root)/library/multiframe.tcl
source $ds9(root)/library/mview.tcl
source $ds9(root)/library/mwcs.tcl
source $ds9(root)/library/mzoom.tcl
source $ds9(root)/library/nameres.tcl
source $ds9(root)/library/nsvr.tcl
source $ds9(root)/library/nrrd.tcl
source $ds9(root)/library/nvss.tcl
source $ds9(root)/library/open.tcl
source $ds9(root)/library/pagesetup.tcl
source $ds9(root)/library/panner.tcl
source $ds9(root)/library/panzoom.tcl
source $ds9(root)/library/photo.tcl
source $ds9(root)/library/pixel.tcl
source $ds9(root)/library/plot.tcl
source $ds9(root)/library/plotbar.tcl
source $ds9(root)/library/plotdialog.tcl
source $ds9(root)/library/plotelement.tcl
source $ds9(root)/library/plotline.tcl
source $ds9(root)/library/plotprint.tcl
source $ds9(root)/library/plotprocess.tcl
source $ds9(root)/library/plotscatter.tcl
source $ds9(root)/library/point.tcl
source $ds9(root)/library/polygon.tcl
source $ds9(root)/library/prefs.tcl
source $ds9(root)/library/prefsdialog.tcl
source $ds9(root)/library/print.tcl
source $ds9(root)/library/projection.tcl
source $ds9(root)/library/rgb.tcl
source $ds9(root)/library/rgbarray.tcl
source $ds9(root)/library/rgbcube.tcl
source $ds9(root)/library/rgbimage.tcl
source $ds9(root)/library/ruler.tcl
source $ds9(root)/library/samp.tcl
source $ds9(root)/library/sao.tcl
source $ds9(root)/library/save.tcl
source $ds9(root)/library/saveimage.tcl
source $ds9(root)/library/scale.tcl
source $ds9(root)/library/sia.tcl
source $ds9(root)/library/siadialog.tcl
source $ds9(root)/library/segment.tcl
source $ds9(root)/library/sfits.tcl
source $ds9(root)/library/shm.tcl
source $ds9(root)/library/skyview.tcl
source $ds9(root)/library/slider.tcl
source $ds9(root)/library/smosaic.tcl
source $ds9(root)/library/smosaiciraf.tcl
source $ds9(root)/library/smosaicwcs.tcl
source $ds9(root)/library/smooth.tcl
source $ds9(root)/library/srgbcube.tcl
source $ds9(root)/library/starbase.tcl
source $ds9(root)/library/stdfbox.tcl
source $ds9(root)/library/stsci.tcl
source $ds9(root)/library/template.tcl
source $ds9(root)/library/text.tcl
source $ds9(root)/library/tkfbox.tcl
source $ds9(root)/library/tsv.tcl
source $ds9(root)/library/url.tcl
source $ds9(root)/library/util.tcl
source $ds9(root)/library/var.tcl
source $ds9(root)/library/vector.tcl
source $ds9(root)/library/vla.tcl
source $ds9(root)/library/vlss.tcl
source $ds9(root)/library/vo.tcl
source $ds9(root)/library/vot.tcl
source $ds9(root)/library/wcs.tcl
source $ds9(root)/library/xmfbox.tcl
source $ds9(root)/library/xmlrpc.tcl
source $ds9(root)/library/xpa.tcl

source $ds9(root)/library/alignparser.tcl
source $ds9(root)/library/alignlex.tcl
source $ds9(root)/library/analysisparser.tcl
source $ds9(root)/library/analysislex.tcl
source $ds9(root)/library/arrayparser.tcl
source $ds9(root)/library/arraylex.tcl
source $ds9(root)/library/backupparser.tcl
source $ds9(root)/library/backuplex.tcl
source $ds9(root)/library/binparser.tcl
source $ds9(root)/library/binlex.tcl
source $ds9(root)/library/binsendparser.tcl
source $ds9(root)/library/binsendlex.tcl
source $ds9(root)/library/bgparser.tcl
source $ds9(root)/library/bglex.tcl
source $ds9(root)/library/blinkparser.tcl
source $ds9(root)/library/blinklex.tcl
source $ds9(root)/library/blockparser.tcl
source $ds9(root)/library/blocklex.tcl
source $ds9(root)/library/blocksendparser.tcl
source $ds9(root)/library/blocksendlex.tcl
source $ds9(root)/library/catparser.tcl
source $ds9(root)/library/catlex.tcl
source $ds9(root)/library/catsendparser.tcl
source $ds9(root)/library/catsendlex.tcl
source $ds9(root)/library/cmapparser.tcl
source $ds9(root)/library/cmaplex.tcl
source $ds9(root)/library/colorbarparser.tcl
source $ds9(root)/library/colorbarlex.tcl
source $ds9(root)/library/contourparser.tcl
source $ds9(root)/library/contourlex.tcl
source $ds9(root)/library/contoursendparser.tcl
source $ds9(root)/library/contoursendlex.tcl
source $ds9(root)/library/cropparser.tcl
source $ds9(root)/library/croplex.tcl
source $ds9(root)/library/cropsendparser.tcl
source $ds9(root)/library/cropsendlex.tcl
source $ds9(root)/library/crosshairparser.tcl
source $ds9(root)/library/crosshairlex.tcl
source $ds9(root)/library/cubeparser.tcl
source $ds9(root)/library/cubelex.tcl
source $ds9(root)/library/cursorparser.tcl
source $ds9(root)/library/cursorlex.tcl
source $ds9(root)/library/dssesoparser.tcl
source $ds9(root)/library/dssesolex.tcl
source $ds9(root)/library/dssesosendparser.tcl
source $ds9(root)/library/dssesosendlex.tcl
source $ds9(root)/library/dsssaoparser.tcl
source $ds9(root)/library/dsssaolex.tcl
source $ds9(root)/library/dsssaosendparser.tcl
source $ds9(root)/library/dsssaosendlex.tcl
source $ds9(root)/library/dssstsciparser.tcl
source $ds9(root)/library/dssstscilex.tcl
source $ds9(root)/library/dssstscisendparser.tcl
source $ds9(root)/library/dssstscisendlex.tcl
source $ds9(root)/library/enviparser.tcl
source $ds9(root)/library/envilex.tcl
source $ds9(root)/library/exportparser.tcl
source $ds9(root)/library/exportlex.tcl
source $ds9(root)/library/fitsparser.tcl
source $ds9(root)/library/fitslex.tcl
source $ds9(root)/library/frameparser.tcl
source $ds9(root)/library/framelex.tcl
source $ds9(root)/library/gridparser.tcl
source $ds9(root)/library/gridlex.tcl
source $ds9(root)/library/gridsendparser.tcl
source $ds9(root)/library/gridsendlex.tcl
source $ds9(root)/library/headerparser.tcl
source $ds9(root)/library/headerlex.tcl
source $ds9(root)/library/heightparser.tcl
source $ds9(root)/library/heightlex.tcl
source $ds9(root)/library/iconifyparser.tcl
source $ds9(root)/library/iconifylex.tcl
source $ds9(root)/library/iisparser.tcl
source $ds9(root)/library/iislex.tcl
source $ds9(root)/library/lockparser.tcl
source $ds9(root)/library/locklex.tcl
source $ds9(root)/library/magnifierparser.tcl
source $ds9(root)/library/magnifierlex.tcl
source $ds9(root)/library/maskparser.tcl
source $ds9(root)/library/masklex.tcl
source $ds9(root)/library/matchparser.tcl
source $ds9(root)/library/matchlex.tcl
source $ds9(root)/library/mecubeparser.tcl
source $ds9(root)/library/mecubelex.tcl
source $ds9(root)/library/minmaxparser.tcl
source $ds9(root)/library/minmaxlex.tcl
source $ds9(root)/library/minmaxsendparser.tcl
source $ds9(root)/library/minmaxsendlex.tcl
source $ds9(root)/library/modeparser.tcl
source $ds9(root)/library/modelex.tcl
source $ds9(root)/library/mosaicwcsparser.tcl
source $ds9(root)/library/mosaicwcslex.tcl
source $ds9(root)/library/mosaicirafparser.tcl
source $ds9(root)/library/mosaiciraflex.tcl
source $ds9(root)/library/mosaicimageirafparser.tcl
source $ds9(root)/library/mosaicimageiraflex.tcl
source $ds9(root)/library/mosaicimagewcsparser.tcl
source $ds9(root)/library/mosaicimagewcslex.tcl
source $ds9(root)/library/mosaicimagewfpc2parser.tcl
source $ds9(root)/library/mosaicimagewfpc2lex.tcl
source $ds9(root)/library/movieparser.tcl
source $ds9(root)/library/movielex.tcl
source $ds9(root)/library/multiframeparser.tcl
source $ds9(root)/library/multiframelex.tcl
source $ds9(root)/library/nanparser.tcl
source $ds9(root)/library/nanlex.tcl
source $ds9(root)/library/nresparser.tcl
source $ds9(root)/library/nreslex.tcl
source $ds9(root)/library/nrrdparser.tcl
source $ds9(root)/library/nrrdlex.tcl
source $ds9(root)/library/nvssparser.tcl
source $ds9(root)/library/nvsslex.tcl
source $ds9(root)/library/nvsssendparser.tcl
source $ds9(root)/library/nvsssendlex.tcl
source $ds9(root)/library/orientparser.tcl
source $ds9(root)/library/orientlex.tcl
source $ds9(root)/library/rotateparser.tcl
source $ds9(root)/library/rotatelex.tcl
source $ds9(root)/library/pagesetupparser.tcl
source $ds9(root)/library/pagesetuplex.tcl
source $ds9(root)/library/panparser.tcl
source $ds9(root)/library/panlex.tcl
source $ds9(root)/library/pansendparser.tcl
source $ds9(root)/library/pansendlex.tcl
source $ds9(root)/library/photoparser.tcl
source $ds9(root)/library/photolex.tcl
source $ds9(root)/library/pixeltableparser.tcl
source $ds9(root)/library/pixeltablelex.tcl
source $ds9(root)/library/plotparser.tcl
source $ds9(root)/library/plotlex.tcl
source $ds9(root)/library/precisionparser.tcl
source $ds9(root)/library/precisionlex.tcl
source $ds9(root)/library/prefsparser.tcl
source $ds9(root)/library/prefslex.tcl
source $ds9(root)/library/preserveparser.tcl
source $ds9(root)/library/preservelex.tcl
source $ds9(root)/library/psparser.tcl
source $ds9(root)/library/pslex.tcl
source $ds9(root)/library/regionparser.tcl
source $ds9(root)/library/regionlex.tcl
source $ds9(root)/library/regionsendparser.tcl
source $ds9(root)/library/regionsendlex.tcl
source $ds9(root)/library/restoreparser.tcl
source $ds9(root)/library/restorelex.tcl
source $ds9(root)/library/rgbparser.tcl
source $ds9(root)/library/rgblex.tcl
source $ds9(root)/library/rgbarrayparser.tcl
source $ds9(root)/library/rgbarraylex.tcl
source $ds9(root)/library/rgbcubeparser.tcl
source $ds9(root)/library/rgbcubelex.tcl
source $ds9(root)/library/rgbimageparser.tcl
source $ds9(root)/library/rgbimagelex.tcl
source $ds9(root)/library/sampparser.tcl
source $ds9(root)/library/samplex.tcl
source $ds9(root)/library/saveparser.tcl
source $ds9(root)/library/savelex.tcl
source $ds9(root)/library/saveimageparser.tcl
source $ds9(root)/library/saveimagelex.tcl
source $ds9(root)/library/scaleparser.tcl
source $ds9(root)/library/scalelex.tcl
source $ds9(root)/library/scalesendparser.tcl
source $ds9(root)/library/scalesendlex.tcl
source $ds9(root)/library/sfitsparser.tcl
source $ds9(root)/library/sfitslex.tcl
source $ds9(root)/library/shmparser.tcl
source $ds9(root)/library/shmlex.tcl
source $ds9(root)/library/siaparser.tcl
source $ds9(root)/library/sialex.tcl
source $ds9(root)/library/skyviewparser.tcl
source $ds9(root)/library/skyviewlex.tcl
source $ds9(root)/library/skyviewsendparser.tcl
source $ds9(root)/library/skyviewsendlex.tcl
source $ds9(root)/library/sleepparser.tcl
source $ds9(root)/library/sleeplex.tcl
source $ds9(root)/library/smoothparser.tcl
source $ds9(root)/library/smoothlex.tcl
source $ds9(root)/library/smosaicirafparser.tcl
source $ds9(root)/library/smosaiciraflex.tcl
source $ds9(root)/library/smosaicwcsparser.tcl
source $ds9(root)/library/smosaicwcslex.tcl
source $ds9(root)/library/sourceparser.tcl
source $ds9(root)/library/sourcelex.tcl
source $ds9(root)/library/srgbcubeparser.tcl
source $ds9(root)/library/srgbcubelex.tcl
source $ds9(root)/library/threadsparser.tcl
source $ds9(root)/library/threadslex.tcl
source $ds9(root)/library/threedparser.tcl
source $ds9(root)/library/threedlex.tcl
source $ds9(root)/library/tileparser.tcl
source $ds9(root)/library/tilelex.tcl
source $ds9(root)/library/twomassparser.tcl
source $ds9(root)/library/twomasslex.tcl
source $ds9(root)/library/twomasssendparser.tcl
source $ds9(root)/library/twomasssendlex.tcl
source $ds9(root)/library/updateparser.tcl
source $ds9(root)/library/updatelex.tcl
source $ds9(root)/library/urlfitsparser.tcl
source $ds9(root)/library/urlfitslex.tcl
source $ds9(root)/library/viewparser.tcl
source $ds9(root)/library/viewlex.tcl
source $ds9(root)/library/viewsendparser.tcl
source $ds9(root)/library/viewsendlex.tcl
source $ds9(root)/library/vlaparser.tcl
source $ds9(root)/library/vlalex.tcl
source $ds9(root)/library/vlasendparser.tcl
source $ds9(root)/library/vlasendlex.tcl
source $ds9(root)/library/vlssparser.tcl
source $ds9(root)/library/vlsslex.tcl
source $ds9(root)/library/vlsssendparser.tcl
source $ds9(root)/library/vlsssendlex.tcl
source $ds9(root)/library/voparser.tcl
source $ds9(root)/library/volex.tcl
source $ds9(root)/library/wcsparser.tcl
source $ds9(root)/library/wcslex.tcl
source $ds9(root)/library/webparser.tcl
source $ds9(root)/library/weblex.tcl
source $ds9(root)/library/widthparser.tcl
source $ds9(root)/library/widthlex.tcl
source $ds9(root)/library/xpaparser.tcl
source $ds9(root)/library/xpalex.tcl
source $ds9(root)/library/xpafirstparser.tcl
source $ds9(root)/library/xpafirstlex.tcl
source $ds9(root)/library/zscaleparser.tcl
source $ds9(root)/library/zscalelex.tcl
source $ds9(root)/library/zscalesendparser.tcl
source $ds9(root)/library/zscalesendlex.tcl
source $ds9(root)/library/zoomparser.tcl
source $ds9(root)/library/zoomlex.tcl

switch [tk windowingsystem] {
    x11 {}
    aqua {source $ds9(root)/library/macosx.tcl}
    win32 {source $ds9(root)/library/win32.tcl}
}
