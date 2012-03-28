import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders
import XMonad.Hooks.SetWMName

myManageHook = composeAll
  [ className =? "net-minecraft-LauncherFrame" --> doShift "4"
  , className =? "net-minecraft-LauncherFrame" --> doFloat ]

myModMask = mod4Mask
myBorderWidth = 1
myTerminal = "urxvt"
myBar = "xmobar"
myFocusFollowsMouse = False
myLayoutHook = smartBorders $ tiled ||| Full
  where
    -- default tiling algorithm partitions the screen
    tiled = Tall nmaster delta ratio

    -- The default number of windows in the master pane
    nmaster = 1

    -- Default proportion of screen occupied by master
    ratio   = 1/2

    -- Percent of screen to increment by when resizing
    delta   = 3/100

myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
myConfig = defaultConfig { modMask = myModMask
       , terminal = myTerminal
       , borderWidth = myBorderWidth
       , manageHook = myManageHook <+> manageHook defaultConfig
       , focusFollowsMouse = myFocusFollowsMouse
       , startupHook = setWMName "LG3D"
       , layoutHook = myLayoutHook
       }
