import android.os.SystemClock;
import com.snapchat.android.util.debug.ReleaseManager;

public final class bav
  extends bwc
{
  public long mOnCreateMillis;
  public int mOnResumeCycles;
  public long mOnResumeMillis;
  
  public final boolean a()
  {
    return true;
  }
  
  public final String b()
  {
    long l = SystemClock.elapsedRealtime();
    StringBuilder localStringBuilder = new StringBuilder();
    if (mOnCreateMillis != 0L)
    {
      localStringBuilder.append("Millis since onCreate: ");
      localStringBuilder.append(l - mOnCreateMillis);
      localStringBuilder.append("\n");
    }
    if (mOnResumeMillis != 0L)
    {
      localStringBuilder.append("Millis since onResume: ");
      localStringBuilder.append(l - mOnResumeMillis);
      localStringBuilder.append("\n");
    }
    if (mOnResumeCycles != 0)
    {
      localStringBuilder.append("Number of onResume cycles: ");
      localStringBuilder.append(mOnResumeCycles);
      localStringBuilder.append("\n");
    }
    return localStringBuilder.toString();
  }
  
  public final String c()
  {
    if (ReleaseManager.f()) {
      return akr.l();
    }
    return null;
  }
  
  public final String d()
  {
    if (ReleaseManager.f()) {
      return akr.G();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */