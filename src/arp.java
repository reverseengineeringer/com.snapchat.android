import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.DisplayMetrics;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.util.PhotoEffectTask;
import java.util.concurrent.atomic.AtomicBoolean;

public final class arp
  extends arn
{
  protected Bitmap b;
  private final String c;
  private final int d;
  private AtomicBoolean e = new AtomicBoolean(true);
  private boolean f = false;
  
  public arp(String paramString, int paramInt)
  {
    c = paramString;
    d = paramInt;
  }
  
  public final String a()
  {
    return c;
  }
  
  public final void a(boolean paramBoolean, Bitmap paramBitmap)
  {
    int j = 0;
    if (!paramBoolean) {}
    SnapchatApplication localSnapchatApplication;
    do
    {
      return;
      e.set(false);
      localSnapchatApplication = SnapchatApplication.b();
    } while (localSnapchatApplication == null);
    Object localObject = localSnapchatApplication.getResources().getDisplayMetrics();
    int i = j;
    if (b != null) {
      if (b.getWidth() == paramBitmap.getWidth())
      {
        i = j;
        if (b.getHeight() == paramBitmap.getHeight()) {}
      }
      else
      {
        i = 1;
      }
    }
    if (i != 0) {
      b = null;
    }
    if (b == null)
    {
      localObject = aur.a((DisplayMetrics)localObject, paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      b = avq.a().a((BitmapFactory.Options)localObject, true);
    }
    if (b == null) {
      b = aur.a(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    }
    try
    {
      PhotoEffectTask.a(d, paramBitmap, b, localSnapchatApplication);
      a = new Paint();
      a.setShader(new BitmapShader(b, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
      paramBitmap = aur.b(paramBitmap, localSnapchatApplication);
      a.getShader().setLocalMatrix(paramBitmap);
      return;
    }
    catch (Exception paramBitmap)
    {
      Timber.f("VisualFilterPage", "Failed to set the bitmap shader" + paramBitmap, new Object[0]);
      return;
    }
    finally
    {
      e.set(true);
      f = true;
    }
  }
  
  public final FilterPageType b()
  {
    return FilterPageType.BACKGROUNDFILTER;
  }
  
  public final void e()
  {
    if (e.get()) {
      avq.a().a(b);
    }
    b = null;
  }
  
  public final boolean f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     arp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */