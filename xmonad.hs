import XMonad
import XMonad.Util.EZConfig (additionalKeys)
import Graphics.X11.ExtraTypes.XF86

main = xmonad $ def `additionalKeys` keyBindings

keyBindings = 
  -- mute
  [ ((0, xF86XK_AudioMute), spawn "pactl set-sink-mute 0 toggle")
  -- lower volume
  , ((0, xF86XK_AudioLowerVolume), spawn "pactl -- set-sink-volume 0 -5%")
  -- raise volume
  , ((0, xF86XK_AudioRaiseVolume), spawn "pactl -- set-sink-volume 0 +5%")
  -- -- mute mic
  , ((0, xF86XK_AudioMicMute), spawn "amixer -D pulse sset Capture toggle")
  -- -- lower brightness
  , ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 10")
  -- -- raise brightness
  , ((0, xF86XK_MonBrightnessUp), spawn "xbacklight -inc 10")
  ]
