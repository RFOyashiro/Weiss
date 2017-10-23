#############################################################################
# Makefile for building: WeissSchwarz
# Generated by qmake (3.0) (Qt 5.7.0)
# Project:  WeissSchwarz.pro
# Template: app
# Command: C:\Qt3\5.7\mingw53_32\bin\qmake.exe -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile WeissSchwarz.pro
#############################################################################

MAKEFILE      = Makefile

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = C:\Qt3\5.7\mingw53_32\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: WeissSchwarz.pro ../../../../Qt3/5.7/mingw53_32/mkspecs/win32-g++/qmake.conf ../../../../Qt3/5.7/mingw53_32/mkspecs/features/spec_pre.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/qdevice.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/device_config.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/common/angle.conf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/qconfig.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dcore.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dcore_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dextras.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dextras_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dinput.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dinput_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dlogic.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dlogic_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquick.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquick_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickextras.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickextras_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickinput.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickinput_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickrender.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickrender_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3drender.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3drender_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axbase.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axbase_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axcontainer.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axcontainer_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axserver.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axserver_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_bluetooth.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_bluetooth_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_bootstrap_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_charts.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_charts_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_clucene_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_concurrent.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_concurrent_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_core.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_core_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_datavisualization.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_datavisualization_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_dbus.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_dbus_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_designer.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_designer_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_designercomponents_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_gamepad.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_gamepad_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_gui.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_gui_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_help.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_help_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_location.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_location_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_multimedia.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_multimedia_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_multimediawidgets.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_network.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_network_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_nfc.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_nfc_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_opengl.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_opengl_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_openglextensions.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_openglextensions_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_packetprotocol_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_platformsupport_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_positioning.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_positioning_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_printsupport.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_printsupport_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_purchasing.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_purchasing_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qml.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qml_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qmldebug_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qmltest.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qmltest_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quick.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quick_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickcontrols2.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickcontrols2_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickparticles_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quicktemplates2_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickwidgets.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickwidgets_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_script.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_script_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_scripttools.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_scripttools_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_scxml.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_scxml_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_sensors.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_sensors_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_serialbus.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_serialbus_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_serialport.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_serialport_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_sql.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_sql_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_svg.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_svg_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_testlib.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_testlib_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_uiplugin.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_uitools.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_uitools_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_webchannel.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_webchannel_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_websockets.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_websockets_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_widgets.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_widgets_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_winextras.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_winextras_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_xml.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_xml_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_xmlpatterns.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/qt_functions.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/qt_config.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/win32/qt_config.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/win32-g++/qmake.conf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/spec_post.prf \
		.qmake.stash \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/exclusive_builds.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/default_pre.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/win32/default_pre.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/resolve_config.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/exclusive_builds_post.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/default_post.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/win32/console.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/qml_debug.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/win32/rtti.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/precompile_header.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/warn_on.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/file_copies.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/testcase_targets.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/exceptions.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/yacc.prf \
		../../../../Qt3/5.7/mingw53_32/mkspecs/features/lex.prf \
		WeissSchwarz.pro
	$(QMAKE) -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile WeissSchwarz.pro
../../../../Qt3/5.7/mingw53_32/mkspecs/features/spec_pre.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/qdevice.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/device_config.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/common/angle.conf:
../../../../Qt3/5.7/mingw53_32/mkspecs/qconfig.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dcore.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dcore_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dextras.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dextras_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dinput.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dinput_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dlogic.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dlogic_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquick.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquick_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickextras.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickextras_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickinput.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickinput_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickrender.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3dquickrender_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3drender.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_3drender_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axbase.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axbase_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axcontainer.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axcontainer_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axserver.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_axserver_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_bluetooth.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_bluetooth_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_bootstrap_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_charts.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_charts_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_clucene_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_concurrent.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_concurrent_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_core.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_core_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_datavisualization.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_datavisualization_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_dbus.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_dbus_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_designer.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_designer_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_designercomponents_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_gamepad.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_gamepad_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_gui.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_gui_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_help.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_help_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_location.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_location_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_multimedia.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_multimedia_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_multimediawidgets.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_network.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_network_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_nfc.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_nfc_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_opengl.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_opengl_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_openglextensions.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_openglextensions_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_packetprotocol_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_platformsupport_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_positioning.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_positioning_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_printsupport.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_printsupport_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_purchasing.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_purchasing_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qml.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qml_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qmldebug_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qmldevtools_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qmltest.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qmltest_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quick.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quick_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickcontrols2.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickcontrols2_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickparticles_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quicktemplates2_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickwidgets.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_quickwidgets_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_script.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_script_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_scripttools.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_scripttools_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_scxml.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_scxml_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_sensors.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_sensors_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_serialbus.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_serialbus_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_serialport.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_serialport_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_sql.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_sql_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_svg.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_svg_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_testlib.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_testlib_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_uiplugin.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_uitools.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_uitools_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_webchannel.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_webchannel_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_websockets.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_websockets_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_widgets.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_widgets_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_winextras.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_winextras_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_xml.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_xml_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_xmlpatterns.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/qt_functions.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/qt_config.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/win32/qt_config.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/win32-g++/qmake.conf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/spec_post.prf:
.qmake.stash:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/exclusive_builds.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/default_pre.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/win32/default_pre.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/resolve_config.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/exclusive_builds_post.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/default_post.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/win32/console.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/qml_debug.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/win32/rtti.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/precompile_header.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/warn_on.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/file_copies.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/testcase_targets.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/exceptions.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/yacc.prf:
../../../../Qt3/5.7/mingw53_32/mkspecs/features/lex.prf:
WeissSchwarz.pro:
qmake: FORCE
	@$(QMAKE) -spec win32-g++ "CONFIG+=debug" "CONFIG+=qml_debug" -o Makefile WeissSchwarz.pro

qmake_all: FORCE

make_first: debug-make_first release-make_first  FORCE
all: debug-all release-all  FORCE
clean: debug-clean release-clean  FORCE
distclean: debug-distclean release-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash

check: first

benchmark: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile
