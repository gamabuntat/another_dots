#ifndef CONFIG_H
#define CONFIG_H

#define MOD Mod4Mask

const char* menu[]    = {"dmenu_run", "-fn", "Monaco-11", "-nb", "#1C1C1C", "-sf", "#D0D0D0", "-sb", "#464646", "-nf", "#D0D0D0", 0};
const char* term[]    = {"urxvt",             0};
const char* smallTerm[] = {"urxvt", "-geometry", "83x52", 0};
const char* scrot[]   = {"scr",            0};
const char* briup[]   = {"xbacklight", "-inc", "10", 0};
const char* bridown[] = {"xbacklight", "-dec", "10", 0};
const char* voldown[] = {"changeVolume.sh", "5-", 0};
const char* volup[]   = {"changeVolume.sh", "5+", 0};
const char* volmute[] = {"changeVolume.sh", "toggle", 0};
const char* colors[]  = {"bud", "/home/goldie/Pictures/Wallpapers", 0};
const char* play[] = {"playerctl", "-p", "spotify", "play-pause", 0};
const char* prev[] = {"playerctl", "-p", "spotify", "previous", 0};
const char* next[] = {"playerctl", "-p", "spotify", "next", 0};
const char* screen[] = {"gnome-screenshot", 0};
const char* browser[] = {"chromium", 0};
const char* restart[] = {"killall", "sowm", 0};

static struct key keys[] = {
    {MOD,      XK_q,   win_kill,   {0}},
    {MOD,      XK_c,   win_center, {0}},
    {MOD,      XK_f,   win_fs,     {0}},

    {MOD,           XK_k,  win_move,  {.com = (const char*[]){"move",   "n"}, .i = 10}},
    {MOD,           XK_j,  win_move,  {.com = (const char*[]){"move",   "s"}, .i = 10}},
    {MOD,           XK_l,  win_move,  {.com = (const char*[]){"move",   "e"}, .i = 10}},
    {MOD,           XK_h,  win_move,  {.com = (const char*[]){"move",   "w"}, .i = 10}},

    {MOD|ShiftMask, XK_k,  win_move,  {.com = (const char*[]){"resize", "n"}, .i = 10}},
    {MOD|ShiftMask, XK_j,  win_move,  {.com = (const char*[]){"resize", "s"}, .i = 10}},
    {MOD|ShiftMask, XK_l,  win_move,  {.com = (const char*[]){"resize", "e"}, .i = 10}},
    {MOD|ShiftMask, XK_h,  win_move,  {.com = (const char*[]){"resize", "w"}, .i = 10}},

    {MOD, XK_n, win_next,   {0}},
    {MOD, XK_p, win_prev,   {0}},

    {MOD, XK_d,      run, {.com = menu}},
    {MOD, XK_w,      run, {.com = colors}},
    {MOD, XK_p,      run, {.com = scrot}},
    {MOD, XK_Return, run, {.com = term}},
    {MOD|ShiftMask, XK_Return, run, {.com = smallTerm}},

    {0,   XF86XK_AudioLowerVolume,  run, {.com = voldown}},
    {0,   XF86XK_AudioRaiseVolume,  run, {.com = volup}},
    {0,   XF86XK_AudioMute,         run, {.com = volmute}},
    {0,   XF86XK_MonBrightnessUp,   run, {.com = briup}},
    {0,   XF86XK_MonBrightnessDown, run, {.com = bridown}},
    {0,   XF86XK_AudioPlay,         run, {.com = play}},
    {0,   XF86XK_AudioPrev,         run, {.com = prev}},
    {0,   XF86XK_AudioNext,         run, {.com = next}},

    {MOD,           XK_1, ws_go,     {.i = 1}},
    {MOD|ShiftMask, XK_1, win_to_ws, {.i = 1}},
    {MOD,           XK_2, ws_go,     {.i = 2}},
    {MOD|ShiftMask, XK_2, win_to_ws, {.i = 2}},
    {MOD,           XK_3, ws_go,     {.i = 3}},
    {MOD|ShiftMask, XK_3, win_to_ws, {.i = 3}},
    {MOD,           XK_4, ws_go,     {.i = 4}},
    {MOD|ShiftMask, XK_4, win_to_ws, {.i = 4}},
    {MOD,           XK_5, ws_go,     {.i = 5}},
    {MOD|ShiftMask, XK_5, win_to_ws, {.i = 5}},
    {MOD,           XK_6, ws_go,     {.i = 6}},
    {MOD|ShiftMask, XK_6, win_to_ws, {.i = 6}},

    {0, XK_Print,    run, {.com = screen}},
    {MOD, XK_b,      run, {.com = browser}},
    {MOD|ShiftMask, XK_r, run, {.com = restart}},
};

#endif
