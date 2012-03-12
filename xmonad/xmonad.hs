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

myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
myConfig = defaultConfig { modMask = myModMask
       , terminal = myTerminal
       , borderWidth = myBorderWidth
       , manageHook = myManageHook <+> manageHook defaultConfig
       , focusFollowsMouse = myFocusFollowsMouse
       }
