#############################################################################
# Makefile for building: qe
# Generated by qmake (2.01a) (Qt 4.7.3) on: Tue Jan 9 18:28:03 2018
# Project:  qe.pro
# Template: app
# Command: e:\USR\BIN\qmake.exe -o Makefile qe.pro
#############################################################################

null :=
space := $(null) # end of the line
# function to change DOS-like space escaping to Unix-like
q = $(subst %,\%,$(subst ;,\;,$(subst &,\&,$(subst +,\+,$(subst $(space),\ ,$(subst ",,$(1)))))))

QMAKESPECDIR  = "e:\usr\share\qt4\mkspecs\os2-g++"
MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_HAVE_MMX -DQT_HAVE_3DNOW -DQT_HAVE_SSE -DQT_HAVE_MMXEXT -DQT_HAVE_SSE2
CFLAGS        = -Zomf -march=i486 -mtune=generic -s -O2 -Wall $(DEFINES)
CXXFLAGS      = -Zomf -march=i486 -mtune=generic -s -O2 -Wall $(DEFINES)
INCPATH       = -Ie:\usr\include\QtCore -Ie:\usr\include\QtGui -Ie:\usr\include -I. -I. -I$(QMAKESPECDIR)
INCLUDEPATH   = e:\usr\include\QtCore;e:\usr\include\QtGui;e:\usr\include;.;.;$(QMAKESPECDIR)
LINK          = g++
LFLAGS        = -Zomf -Zstack 0x2000 -s -Zlinker /EXEPACK:2 -Zlinker /PM:PM -Zno-fork -Zhigh-mem -Zmap
LIBS          = -Le:\usr\lib -lQtGui4 -lQtCore4
QMAKE         = e:\USR\BIN\qmake.exe
IDC           = e:\usr\lib\qt4\bin\idc.exe
IDL           = midl
RC            = rc
ZIP           = zip -r -9
COPY          = copy
COPY_FILE     = $(COPY)
COPY_DIR      = $(QMAKESPECDIR)\cpdir.cmd
DEL_FILE      = del
DEL_DIR       = rmdir
MOVE          = move
CHK_DIR_EXISTS= if not exist
MKDIR         = $(QMAKESPECDIR)\mkdir-p.cmd
INSTALL_FILE    = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR     = $(COPY_DIR)

####### Output directory

OBJECTS_DIR   = .

####### Files

SOURCES       = finddialog.cpp \
		replacedialog.cpp \
		gotolinedialog.cpp \
		main.cpp \
		mainwindow.cpp moc_finddialog.cpp \
		moc_replacedialog.cpp \
		moc_gotolinedialog.cpp \
		moc_mainwindow.cpp \
		qrc_qe.cpp
OBJECTS       = finddialog.obj \
		replacedialog.obj \
		gotolinedialog.obj \
		main.obj \
		mainwindow.obj \
		moc_finddialog.obj \
		moc_replacedialog.obj \
		moc_gotolinedialog.obj \
		moc_mainwindow.obj \
		qrc_qe.obj
OBJECTS_RSP   = OBJECTS.qe.rsp
CFLAGS_RSP    = CFLAGS.qe.rsp
CXXFLAGS_RSP  = CXXFLAGS.qe.rsp
DEFINES_RSP   = DEFINES.qe.rsp
INCPATH_RSP   = INCPATH.qe.rsp
RC_FILE       = qe.rc
RES_FILE      = $(OBJECTS_DIR)\qe.res
DIST          = 
QMAKE_TARGET  = qe
DESTDIR        = 
TARGET         = qe.exe
DESTDIR_TARGET = qe.exe

####### Implicit rules

.SUFFIXES: .cpp .cc .cxx .c

.cpp.obj:
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o $@ $<

.cc.obj:
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o $@ $<

.cxx.obj:
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o $@ $<

.c.obj:
	$(CC) -c @$(CFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o $@ $<

####### Build rules

first: all
all: Makefile  $(call q,$(DESTDIR_TARGET))

$(call q,$(DESTDIR_TARGET)): ui_finddialog.h ui_replacedialog.h ui_gotolinedialog.h $(OBJECTS) $(call q,$(RES_FILE))
	$(LINK) $(LFLAGS) -o $(DESTDIR_TARGET) $(DEF_FILE) -Wl,@$(OBJECTS_RSP) $(LIBS)
	$(RC) -n -x2 $(RES_FILE) $(DESTDIR_TARGET)
	lxlite /B- /L- /CS $@
ifndef FAST_BUILD
	$(QMAKESPECDIR)\runmapsym.cmd mapsym $(basename $(DESTDIR_TARGET)).map $(basename $(DESTDIR_TARGET)).sym
	$(DEL_FILE) $(basename $(DESTDIR_TARGET)).map
endif


$(call q,$(RES_FILE)): export INCLUDE = $(INCLUDEPATH)
$(call q,$(RES_FILE)): $(call q,$(RC_FILE))
	$(RC) -n -r $(RC_FILE) $(RES_FILE)

Makefile: qe.pro  e:\usr\share\qt4\mkspecs\default\qmake.conf e:\usr\share\qt4\mkspecs\qconfig.pri \
		e:\usr\share\qt4\mkspecs\modules\qt_webkit_version.pri \
		e:\usr\share\qt4\mkspecs\features\qt_functions.prf \
		e:\usr\share\qt4\mkspecs\features\qt_config.prf \
		e:\usr\share\qt4\mkspecs\os2-g++\qmake.conf \
		e:\usr\share\qt4\mkspecs\features\exclusive_builds.prf \
		e:\usr\share\qt4\mkspecs\features\default_pre.prf \
		e:\usr\share\qt4\mkspecs\features\os2\default_pre.prf \
		e:\usr\share\qt4\mkspecs\features\release.prf \
		e:\usr\share\qt4\mkspecs\features\shared.prf \
		e:\usr\share\qt4\mkspecs\features\default_post.prf \
		e:\usr\share\qt4\mkspecs\features\os2\default_post.prf \
		e:\usr\share\qt4\mkspecs\features\os2\windows.prf \
		e:\usr\share\qt4\mkspecs\features\os2\highmem.prf \
		e:\usr\share\qt4\mkspecs\features\os2\exepack.prf \
		e:\usr\share\qt4\mkspecs\features\os2\sym.prf \
		e:\usr\share\qt4\mkspecs\features\warn_on.prf \
		e:\usr\share\qt4\mkspecs\features\qt.prf \
		e:\usr\share\qt4\mkspecs\features\moc.prf \
		e:\usr\share\qt4\mkspecs\features\resources.prf \
		e:\usr\share\qt4\mkspecs\features\uic.prf \
		e:\usr\share\qt4\mkspecs\features\yacc.prf \
		e:\usr\share\qt4\mkspecs\features\lex.prf \
		e:\usr\share\qt4\mkspecs\features\include_source_dir.prf
	$(QMAKE) -o Makefile qe.pro
e:\usr\share\qt4\mkspecs\qconfig.pri:
e:\usr\share\qt4\mkspecs\modules\qt_webkit_version.pri:
e:\usr\share\qt4\mkspecs\features\qt_functions.prf:
e:\usr\share\qt4\mkspecs\features\qt_config.prf:
e:\usr\share\qt4\mkspecs\os2-g++\qmake.conf:
e:\usr\share\qt4\mkspecs\features\exclusive_builds.prf:
e:\usr\share\qt4\mkspecs\features\default_pre.prf:
e:\usr\share\qt4\mkspecs\features\os2\default_pre.prf:
e:\usr\share\qt4\mkspecs\features\release.prf:
e:\usr\share\qt4\mkspecs\features\shared.prf:
e:\usr\share\qt4\mkspecs\features\default_post.prf:
e:\usr\share\qt4\mkspecs\features\os2\default_post.prf:
e:\usr\share\qt4\mkspecs\features\os2\windows.prf:
e:\usr\share\qt4\mkspecs\features\os2\highmem.prf:
e:\usr\share\qt4\mkspecs\features\os2\exepack.prf:
e:\usr\share\qt4\mkspecs\features\os2\sym.prf:
e:\usr\share\qt4\mkspecs\features\warn_on.prf:
e:\usr\share\qt4\mkspecs\features\qt.prf:
e:\usr\share\qt4\mkspecs\features\moc.prf:
e:\usr\share\qt4\mkspecs\features\resources.prf:
e:\usr\share\qt4\mkspecs\features\uic.prf:
e:\usr\share\qt4\mkspecs\features\yacc.prf:
e:\usr\share\qt4\mkspecs\features\lex.prf:
e:\usr\share\qt4\mkspecs\features\include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -o Makefile qe.pro

dist:
	$(ZIP) qe.zip $(SOURCES) $(DIST) qe.pro e:\usr\share\qt4\mkspecs\qconfig.pri e:\usr\share\qt4\mkspecs\modules\qt_webkit_version.pri e:\usr\share\qt4\mkspecs\features\qt_functions.prf e:\usr\share\qt4\mkspecs\features\qt_config.prf e:\usr\share\qt4\mkspecs\os2-g++\qmake.conf e:\usr\share\qt4\mkspecs\features\exclusive_builds.prf e:\usr\share\qt4\mkspecs\features\default_pre.prf e:\usr\share\qt4\mkspecs\features\os2\default_pre.prf e:\usr\share\qt4\mkspecs\features\release.prf e:\usr\share\qt4\mkspecs\features\shared.prf e:\usr\share\qt4\mkspecs\features\default_post.prf e:\usr\share\qt4\mkspecs\features\os2\default_post.prf e:\usr\share\qt4\mkspecs\features\os2\windows.prf e:\usr\share\qt4\mkspecs\features\os2\highmem.prf e:\usr\share\qt4\mkspecs\features\os2\exepack.prf e:\usr\share\qt4\mkspecs\features\os2\sym.prf e:\usr\share\qt4\mkspecs\features\warn_on.prf e:\usr\share\qt4\mkspecs\features\qt.prf e:\usr\share\qt4\mkspecs\features\moc.prf e:\usr\share\qt4\mkspecs\features\resources.prf e:\usr\share\qt4\mkspecs\features\uic.prf e:\usr\share\qt4\mkspecs\features\yacc.prf e:\usr\share\qt4\mkspecs\features\lex.prf e:\usr\share\qt4\mkspecs\features\include_source_dir.prf HEADERS RESOURCES IMAGES SOURCES OBJECTIVE_SOURCES FORMS YACCSOURCES YACCSOURCES LEXSOURCES 

clean: compiler_clean 
	-$(DEL_FILE) finddialog.obj replacedialog.obj gotolinedialog.obj main.obj mainwindow.obj moc_finddialog.obj moc_replacedialog.obj moc_gotolinedialog.obj moc_mainwindow.obj qrc_qe.obj >nul 2>&1
	-$(DEL_FILE) $(basename $(DESTDIR_TARGET)).sym >nul 2>&1
	-$(DEL_FILE) $(RES_FILE) >nul 2>&1

distclean: clean
	-$(DEL_FILE) $(OBJECTS_RSP) $(CFLAGS_RSP) $(CXXFLAGS_RSP) $(DEFINES_RSP) $(INCPATH_RSP) >nul 2>&1
	-$(DEL_FILE) $(DESTDIR_TARGET) >nul 2>&1
	-$(DEL_FILE) Makefile >nul 2>&1

check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_finddialog.cpp moc_replacedialog.cpp moc_gotolinedialog.cpp moc_mainwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_finddialog.cpp moc_replacedialog.cpp moc_gotolinedialog.cpp moc_mainwindow.cpp >nul 2>&1
moc_finddialog.cpp: ui_finddialog.h \
		finddialog.h
	E:\usr\lib\qt4\bin\moc.exe @$(DEFINES_RSP) @$(INCPATH_RSP) -D__OS2__ -D__EMX__ -D__INNOTEK_LIBC__ -D__GNUC__ finddialog.h -o moc_finddialog.cpp

moc_replacedialog.cpp: ui_replacedialog.h \
		replacedialog.h
	E:\usr\lib\qt4\bin\moc.exe @$(DEFINES_RSP) @$(INCPATH_RSP) -D__OS2__ -D__EMX__ -D__INNOTEK_LIBC__ -D__GNUC__ replacedialog.h -o moc_replacedialog.cpp

moc_gotolinedialog.cpp: ui_gotolinedialog.h \
		gotolinedialog.h
	E:\usr\lib\qt4\bin\moc.exe @$(DEFINES_RSP) @$(INCPATH_RSP) -D__OS2__ -D__EMX__ -D__INNOTEK_LIBC__ -D__GNUC__ gotolinedialog.h -o moc_gotolinedialog.cpp

moc_mainwindow.cpp: mainwindow.h
	E:\usr\lib\qt4\bin\moc.exe @$(DEFINES_RSP) @$(INCPATH_RSP) -D__OS2__ -D__EMX__ -D__INNOTEK_LIBC__ -D__GNUC__ mainwindow.h -o moc_mainwindow.cpp

compiler_rcc_make_all: qrc_qe.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_qe.cpp >nul 2>&1
qrc_qe.cpp: qe.qrc \
		images\editor_mini.png \
		images\qe.ico \
		images\editor_vga.png \
		images\editor_vga_mini.png \
		images\editor.png
	e:\usr\lib\qt4\bin\rcc.exe -name qe qe.qrc -o qrc_qe.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp >nul 2>&1
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_finddialog.h ui_replacedialog.h ui_gotolinedialog.h
compiler_uic_clean:
	-$(DEL_FILE) ui_finddialog.h ui_replacedialog.h ui_gotolinedialog.h >nul 2>&1
ui_finddialog.h: finddialog.ui
	e:\usr\lib\qt4\bin\uic.exe finddialog.ui -o ui_finddialog.h

ui_replacedialog.h: replacedialog.ui
	e:\usr\lib\qt4\bin\uic.exe replacedialog.ui -o ui_replacedialog.h

ui_gotolinedialog.h: gotolinedialog.ui
	e:\usr\lib\qt4\bin\uic.exe gotolinedialog.ui -o ui_gotolinedialog.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 



####### Compile

finddialog.obj: finddialog.cpp finddialog.h \
		ui_finddialog.h
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o finddialog.obj finddialog.cpp

replacedialog.obj: replacedialog.cpp replacedialog.h \
		ui_replacedialog.h
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o replacedialog.obj replacedialog.cpp

gotolinedialog.obj: gotolinedialog.cpp gotolinedialog.h \
		ui_gotolinedialog.h
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o gotolinedialog.obj gotolinedialog.cpp

main.obj: main.cpp mainwindow.h
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o main.obj main.cpp

mainwindow.obj: mainwindow.cpp finddialog.h \
		ui_finddialog.h \
		replacedialog.h \
		ui_replacedialog.h \
		gotolinedialog.h \
		ui_gotolinedialog.h \
		mainwindow.h
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o mainwindow.obj mainwindow.cpp

moc_finddialog.obj: moc_finddialog.cpp 
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o moc_finddialog.obj moc_finddialog.cpp

moc_replacedialog.obj: moc_replacedialog.cpp 
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o moc_replacedialog.obj moc_replacedialog.cpp

moc_gotolinedialog.obj: moc_gotolinedialog.cpp 
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o moc_gotolinedialog.obj moc_gotolinedialog.cpp

moc_mainwindow.obj: moc_mainwindow.cpp 
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o moc_mainwindow.obj moc_mainwindow.cpp

qrc_qe.obj: qrc_qe.cpp 
	$(CXX) -c @$(CXXFLAGS_RSP) @$(DEFINES_RSP) @$(INCPATH_RSP) -o qrc_qe.obj qrc_qe.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

