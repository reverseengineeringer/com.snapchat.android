import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.snapchat.android.SnapchatApplication;

public final class yd
  extends DisplayMetrics
{
  public yd()
  {
    this(((WindowManager)SnapchatApplication.b().getApplicationContext().getSystemService("window")).getDefaultDisplay());
  }
  
  private yd(@chc Display paramDisplay)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramDisplay.getMetrics(localDisplayMetrics);
    setTo(localDisplayMetrics);
    widthPixels = awf.a(localDisplayMetrics, false);
    heightPixels = awf.b(localDisplayMetrics, false);
    if (widthPixels != widthPixels)
    {
      xdpi = ydpi;
      ydpi = xdpi;
    }
  }
}

/* Location:
 * Qualified Name:     yd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */