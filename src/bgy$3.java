import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

final class bgy$3
  implements bgx
{
  bgy$3(bgy parambgy, String paramString) {}
  
  public final void a(List<Bitmap> paramList)
  {
    Object localObject = this$0.mProfileImagesCacheMutex;
    if (paramList == null) {}
    try
    {
      bgy.b(this$0).remove(val$username);
      return;
    }
    finally {}
    if ((bgy.a)bgy.b(this$0).put(val$username, new bgy.a(this$0, paramList)) != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Bitmap localBitmap = (Bitmap)paramList.next();
        bgy.c(this$0).a(localBitmap);
      }
    }
    bbo.a().a(new bcn(val$username));
  }
}

/* Location:
 * Qualified Name:     bgy.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */