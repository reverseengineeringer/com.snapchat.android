package com.brightcove.player.controller;

import android.annotation.TargetApi;
import android.view.accessibility.CaptioningManager.CaptionStyle;
import android.view.accessibility.CaptioningManager.CaptioningChangeListener;
import java.util.Locale;

@TargetApi(19)
class CaptioningChangeListener
  extends CaptioningManager.CaptioningChangeListener
{
  private static final String TAG = CaptioningChangeListener.class.getSimpleName();
  private BrightcoveClosedCaptioningController brightcoveClosedCaptioningController;
  
  public CaptioningChangeListener(BrightcoveClosedCaptioningController paramBrightcoveClosedCaptioningController)
  {
    brightcoveClosedCaptioningController = paramBrightcoveClosedCaptioningController;
  }
  
  public void onEnabledChanged(boolean paramBoolean)
  {
    brightcoveClosedCaptioningController.saveClosedCaptioningState(paramBoolean);
  }
  
  public void onFontScaleChanged(float paramFloat) {}
  
  public void onLocaleChanged(Locale paramLocale)
  {
    new StringBuilder("onLocaleChanged: ").append(paramLocale);
  }
  
  public void onUserStyleChanged(CaptioningManager.CaptionStyle paramCaptionStyle)
  {
    new StringBuilder("onUserStyleChanged: ").append(paramCaptionStyle);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.CaptioningChangeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */