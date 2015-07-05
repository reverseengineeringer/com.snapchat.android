import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.squareup.otto.Bus;
import java.util.List;

final class auy$2
  extends asw
{
  auy$2(auy paramauy, Context paramContext, List paramList1, auz paramauz1, String paramString, List paramList2, auz paramauz2)
  {
    super(paramContext, paramList1, paramauz1);
  }
  
  protected final void a(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      auy.b(this$0).remove(val$key);
      return;
    }
    auy.b(this$0).put(val$key, new auy.a(this$0, paramBitmap, val$storySnaps));
    ban.a().a(new bed(val$item));
  }
}

/* Location:
 * Qualified Name:     auy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */