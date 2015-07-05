import android.graphics.Bitmap;
import android.support.v4.util.LruCache;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

final class bfy$3
  implements bfx
{
  bfy$3(bfy parambfy, String paramString) {}
  
  public final void a(List<Bitmap> paramList)
  {
    Object localObject = this$0.mProfileImagesCacheMutex;
    if (paramList == null) {}
    try
    {
      bfy.b(this$0).remove(val$username);
      return;
    }
    finally {}
    if ((bfy.a)bfy.b(this$0).put(val$username, new bfy.a(this$0, paramList)) != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Bitmap localBitmap = (Bitmap)paramList.next();
        bfy.c(this$0).a(localBitmap);
      }
    }
    ban.a().a(new bbn(val$username));
  }
}

/* Location:
 * Qualified Name:     bfy.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */