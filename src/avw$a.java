import android.graphics.Bitmap;
import android.os.SystemClock;
import java.util.List;

final class avw$a
{
  Bitmap mBitmap;
  long mFirstStoryTimestamp;
  boolean mIsExpired = false;
  long mLastStoryTimestamp;
  long mThumbnailCreationTime;
  
  public avw$a(avw paramavw, @chd Bitmap paramBitmap)
  {
    mBitmap = paramBitmap;
  }
  
  public avw$a(Bitmap paramBitmap, @chd List<akl> paramList)
  {
    mBitmap = paramList;
    mThumbnailCreationTime = SystemClock.elapsedRealtime();
    Object localObject;
    mFirstStoryTimestamp = ((akl)((List)localObject).get(0)).U();
    mLastStoryTimestamp = ((akl)((List)localObject).get(((List)localObject).size() - 1)).U();
  }
}

/* Location:
 * Qualified Name:     avw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */