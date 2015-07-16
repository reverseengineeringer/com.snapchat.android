import android.os.SystemClock;
import android.text.TextUtils;

public class ajy
  implements ahh
{
  protected static final long LOCATION_CACHE_LIFETIME_MILLIS = 10800000L;
  private final bhk mClock;
  @chd
  public String mCustomDescription;
  @chd
  public String mCustomTitle;
  public String mDisplayName;
  public String mFriendName;
  public ajq mGeofence;
  public boolean mIsLocalStory;
  private boolean mIsWhitelisted;
  String mStoryGroupDisplayName;
  public String mStoryId;
  private long mTimeLeft;
  long mTimestamp;
  public String mVenue;
  
  public ajy()
  {
    this(new bhk());
  }
  
  private ajy(bhk parambhk)
  {
    mClock = parambhk;
  }
  
  public ajy(bjn parambjn)
  {
    if (parambjn != null)
    {
      mStoryId = parambjn.a();
      mDisplayName = parambjn.b();
      if (parambjn.c() != null) {
        mGeofence = new ajq(parambjn.c());
      }
      mStoryGroupDisplayName = parambjn.d();
      mVenue = parambjn.e();
      mFriendName = parambjn.f();
      mIsLocalStory = avb.a(parambjn.g());
      mIsWhitelisted = avb.a(parambjn.h());
      mTimeLeft = avb.a(parambjn.i());
    }
    mClock = new bhk();
  }
  
  public ajy(String paramString1, String paramString2)
  {
    mStoryId = paramString1;
    mDisplayName = paramString2;
    mGeofence = null;
    mVenue = null;
    mClock = new bhk();
  }
  
  public boolean b()
  {
    if ((mIsWhitelisted) && (mTimeLeft > 0L)) {
      if (SystemClock.elapsedRealtime() - mTimestamp <= mTimeLeft) {}
    }
    while (SystemClock.elapsedRealtime() - mTimestamp > 10800000L)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public final String d()
  {
    return mDisplayName;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ajy)) {
      return false;
    }
    paramObject = (ajy)paramObject;
    return TextUtils.equals(mStoryId, mStoryId);
  }
  
  public int hashCode()
  {
    return mStoryId.hashCode() + 629;
  }
}

/* Location:
 * Qualified Name:     ajy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */