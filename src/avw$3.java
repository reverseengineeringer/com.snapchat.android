import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.squareup.otto.Bus;

final class avw$3
  extends aag
{
  avw$3(avw paramavw, Context paramContext, String paramString1, String paramString2, String paramString3, avx paramavx)
  {
    super(paramContext, paramString1, paramString2);
  }
  
  protected final void a(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      avw.b(this$0).remove(val$cacheKey);
      return;
    }
    avw.b(this$0).put(val$cacheKey, new avw.a(this$0, paramBitmap));
    bbo.a().a(new bfc(val$item));
  }
}

/* Location:
 * Qualified Name:     avw.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */