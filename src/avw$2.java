import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.squareup.otto.Bus;
import java.util.List;

final class avw$2
  extends atv
{
  avw$2(avw paramavw, Context paramContext, List paramList1, avx paramavx1, String paramString, List paramList2, avx paramavx2)
  {
    super(paramContext, paramList1, paramavx1);
  }
  
  protected final void a(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      avw.b(this$0).remove(val$key);
      return;
    }
    avw.b(this$0).put(val$key, new avw.a(this$0, paramBitmap, val$storySnaps));
    bbo.a().a(new bfc(val$item));
  }
}

/* Location:
 * Qualified Name:     avw.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */