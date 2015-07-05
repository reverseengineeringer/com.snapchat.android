import android.graphics.Bitmap;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.PriorityQueue;

final class avq$1
  implements Runnable
{
  avq$1(avq paramavq, Bitmap paramBitmap) {}
  
  public final void run()
  {
    avq localavq = this$0;
    Bitmap localBitmap = val$bitmap;
    bgp.b();
    synchronized (mMutex)
    {
      if (mBitmapCache.contains(localBitmap))
      {
        if (!ReleaseManager.c()) {
          break label61;
        }
        throw new RuntimeException("You shouldn't add the same bitmap in twice!!");
      }
    }
    mBitmapCache.add(localBitmap);
    label61:
  }
}

/* Location:
 * Qualified Name:     avq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */