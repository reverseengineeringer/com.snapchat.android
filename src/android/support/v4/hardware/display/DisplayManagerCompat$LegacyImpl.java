package android.support.v4.hardware.display;

import android.content.Context;
import android.view.Display;
import android.view.WindowManager;

final class DisplayManagerCompat$LegacyImpl
  extends DisplayManagerCompat
{
  private final WindowManager mWindowManager;
  
  public DisplayManagerCompat$LegacyImpl(Context paramContext)
  {
    mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
  }
  
  public final Display getDisplay(int paramInt)
  {
    Display localDisplay = mWindowManager.getDefaultDisplay();
    if (localDisplay.getDisplayId() == paramInt) {
      return localDisplay;
    }
    return null;
  }
  
  public final Display[] getDisplays()
  {
    return new Display[] { mWindowManager.getDefaultDisplay() };
  }
  
  public final Display[] getDisplays(String paramString)
  {
    if (paramString == null) {
      return new Display[] { mWindowManager.getDefaultDisplay() };
    }
    return new Display[0];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.hardware.display.DisplayManagerCompat.LegacyImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */