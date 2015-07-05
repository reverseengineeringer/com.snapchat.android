import android.graphics.Paint;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public final class arq
{
  public Paint a;
  
  public static int a(arv paramarv, int paramInt1, int paramInt2)
  {
    if (paramarv.b(paramInt1) == FilterPageType.BACKGROUNDFILTER) {
      return paramInt1;
    }
    return paramInt2;
  }
  
  public final Paint a(arn paramarn)
  {
    Paint localPaint = paramarn.c();
    paramarn = localPaint;
    if (localPaint == null) {
      paramarn = a;
    }
    return paramarn;
  }
}

/* Location:
 * Qualified Name:     arq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */