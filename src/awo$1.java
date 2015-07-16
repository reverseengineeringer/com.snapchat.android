import android.graphics.Bitmap;
import java.util.PriorityQueue;

final class awo$1
  implements Runnable
{
  awo$1(awo paramawo, Bitmap paramBitmap) {}
  
  public final void run()
  {
    awo localawo = this$0;
    Bitmap localBitmap = val$bitmap;
    bhp.b();
    synchronized (mMutex)
    {
      if (!mBitmapCache.contains(localBitmap)) {
        mBitmapCache.add(localBitmap);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     awo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */