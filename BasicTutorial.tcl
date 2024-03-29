#############################################################################
# Generated by PAGE version 4.9
# in conjunction with Tcl version 8.6
set vTcl(timestamp) ""


set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #d8d8d8
set vTcl(active_menu_fg) #000000
#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top37
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# USER DEFINED PROCEDURES
#

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top37 {base} {
    if {$base == ""} {
        set base .top37
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background {#d9d9d9} 
    wm focusmodel $top passive
    wm geometry $top 600x450+566+197
    update
    # set in toplevel.wgt.
    global vTcl
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1786 1309
    wm minsize $top 160 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "New Toplevel 1"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    entry $top.ent38 \
        -background white -disabledforeground {#a3a3a3} -font TkFixedFont \
        -foreground {#000000} -insertbackground black -textvariable editText 
    vTcl:DefineAlias "$top.ent38" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    button $top.but39 \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#d9d9d9} -command LoadFilePath \
        -disabledforeground {#a3a3a3} -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {Load File} -textvariable FilePath 
    vTcl:DefineAlias "$top.but39" "Button1" vTcl:WidgetProc "Toplevel1" 1
    button $top.cpd40 \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#d9d9d9} -command LoadDirectory \
        -disabledforeground {#a3a3a3} -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {Load Path} -textvariable Directory 
    vTcl:DefineAlias "$top.cpd40" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button $top.cpd41 \
        -activebackground {#d9d9d9} -activeforeground {#000000} \
        -background {#d9d9d9} -command SimpleFunction \
        -disabledforeground {#a3a3a3} -foreground {#000000} \
        -highlightbackground {#d9d9d9} -highlightcolor black -pady 0 \
        -text {Simple Fuction} 
    vTcl:DefineAlias "$top.cpd41" "Button3" vTcl:WidgetProc "Toplevel1" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.ent38 \
        -in $top -x 60 -y 80 -width 464 -relwidth 0 -height 54 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but39 \
        -in $top -x 160 -y 160 -width 226 -relwidth 0 -height 63 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.cpd40 \
        -in $top -x 160 -y 250 -width 226 -height 63 -anchor nw \
        -bordermode inside 
    place $top.cpd41 \
        -in $top -x 100 -y 340 -width 356 -relwidth 0 -height 63 -relheight 0 \
        -anchor nw -bordermode inside 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

Window show .
Window show .top37

