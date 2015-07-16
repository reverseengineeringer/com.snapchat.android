import android.graphics.Paint;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public final class asp
{
  public Paint a;
  
  public static int a(asu paramasu, int paramInt1, int paramInt2)
  {
    if (paramasu.b(paramInt1) == FilterPageType.BACKGROUNDFILTER) {
      return paramInt1;
    }
    return paramInt2;
  }
  
  public final Paint a(asm paramasm)
  {
    Paint localPaint = paramasm.c();
    paramasm = localPaint;
    if (localPaint == null) {
      paramasm = a;
    }
    return paramasm;
  }
}

/* Location:
 * Qualified Name:     asp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */