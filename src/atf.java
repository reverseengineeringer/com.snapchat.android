import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;

public final class atf
{
  public static Bitmap a(int paramInt1, int paramInt2, @cgc View... paramVarArgs)
  {
    if (paramVarArgs.length == 0) {
      throw new IllegalArgumentException("Specify at least one View to draw.");
    }
    Object localObject2 = avq.a().a(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = aur.a(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
    }
    if (localObject1 == null)
    {
      localObject2 = null;
      return (Bitmap)localObject2;
    }
    Canvas localCanvas = new Canvas((Bitmap)localObject1);
    paramInt2 = paramVarArgs.length;
    paramInt1 = 0;
    for (;;)
    {
      localObject2 = localObject1;
      if (paramInt1 >= paramInt2) {
        break;
      }
      localObject2 = paramVarArgs[paramInt1];
      if (localObject2 != null) {
        ((View)localObject2).draw(localCanvas);
      }
      paramInt1 += 1;
    }
  }
  
  public static Bitmap a(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    paramContext = paramContext.getResources().getDrawable(paramInt1);
    if (paramContext == null) {
      throw new NullPointerException();
    }
    Bitmap localBitmap = aur.a(paramInt2, paramInt3, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    paramContext.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
    paramContext.draw(localCanvas);
    return localBitmap;
  }
}

/* Location:
 * Qualified Name:     atf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */