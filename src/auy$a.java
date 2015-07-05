import android.graphics.Bitmap;
import android.os.SystemClock;
import java.util.List;

final class auy$a
{
  Bitmap mBitmap;
  long mFirstStoryTimestamp;
  boolean mIsExpired = false;
  long mLastStoryTimestamp;
  long mThumbnailCreationTime;
  
  public auy$a(Bitmap paramBitmap, List<ajr> paramList)
  {
    mBitmap = paramList;
    mThumbnailCreationTime = SystemClock.elapsedRealtime();
    Object localObject;
    mFirstStoryTimestamp = ((ajr)((List)localObject).get(0)).W();
    mLastStoryTimestamp = ((ajr)((List)localObject).get(((List)localObject).size() - 1)).W();
  }
}

/* Location:
 * Qualified Name:     auy.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */