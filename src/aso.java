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
import com.snapchat.android.ui.swipefilters.FilterPageType;
import com.snapchat.android.util.PhotoEffectTask;
import java.util.concurrent.atomic.AtomicBoolean;

public final class aso
  extends asm
{
  protected Bitmap b;
  private final String c;
  private final int d;
  private AtomicBoolean e = new AtomicBoolean(true);
  private boolean f = false;
  
  public aso(String paramString, int paramInt)
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
      localObject = avp.a((DisplayMetrics)localObject, paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      b = awo.a().a((BitmapFactory.Options)localObject, true);
    }
    if (b == null) {
      b = avp.a(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    }
    try
    {
      PhotoEffectTask.a(d, paramBitmap, b, localSnapchatApplication);
      a = new Paint();
      a.setShader(new BitmapShader(b, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
      paramBitmap = avp.b(paramBitmap, localSnapchatApplication);
      a.getShader().setLocalMatrix(paramBitmap);
      return;
    }
    catch (Exception paramBitmap)
    {
      new StringBuilder("Failed to set the bitmap shader").append(paramBitmap);
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
      awo.a().a(b);
    }
    b = null;
  }
  
  public final boolean f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     aso
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */