package android.media;

import android.view.accessibility.CaptioningManager.CaptioningChangeListener;
import java.util.Locale;

class SubtitleController$2
  extends CaptioningManager.CaptioningChangeListener
{
  SubtitleController$2(SubtitleController paramSubtitleController) {}
  
  public void onEnabledChanged(boolean paramBoolean)
  {
    this$0.selectDefaultTrack();
  }
  
  public void onLocaleChanged(Locale paramLocale)
  {
    this$0.selectDefaultTrack();
  }
}

/* Location:
 * Qualified Name:     android.media.SubtitleController.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */