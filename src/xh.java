import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.snapchat.android.SnapchatApplication;

public final class xh
  extends DisplayMetrics
{
  public xh()
  {
    this(((WindowManager)SnapchatApplication.b().getApplicationContext().getSystemService("window")).getDefaultDisplay());
  }
  
  private xh(@cgb Display paramDisplay)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramDisplay.getMetrics(localDisplayMetrics);
    setTo(localDisplayMetrics);
    widthPixels = avh.a(localDisplayMetrics, false);
    heightPixels = avh.b(localDisplayMetrics, false);
    if (widthPixels != widthPixels)
    {
      xdpi = ydpi;
      ydpi = xdpi;
    }
  }
}

/* Location:
 * Qualified Name:     xh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */