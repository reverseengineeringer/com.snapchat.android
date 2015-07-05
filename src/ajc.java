import android.os.SystemClock;
import android.text.TextUtils;

public class ajc
  implements agk
{
  protected static final long LOCATION_CACHE_LIFETIME_MILLIS = 10800000L;
  private final bgk mClock;
  @cgc
  public String mCustomDescription;
  @cgc
  public String mCustomTitle;
  public String mDisplayName;
  public String mFriendName;
  public aiu mGeofence;
  public boolean mIsLocalStory;
  private boolean mIsWhitelisted;
  String mStoryGroupDisplayName;
  public String mStoryId;
  private long mTimeLeft;
  long mTimestamp;
  public String mVenue;
  
  public ajc()
  {
    this(new bgk());
  }
  
  private ajc(bgk parambgk)
  {
    mClock = parambgk;
  }
  
  public ajc(bin parambin)
  {
    if (parambin != null)
    {
      mStoryId = parambin.a();
      mDisplayName = parambin.b();
      if (parambin.c() != null) {
        mGeofence = new aiu(parambin.c());
      }
      mStoryGroupDisplayName = parambin.d();
      mVenue = parambin.e();
      mFriendName = parambin.f();
      mIsLocalStory = aud.a(parambin.g());
      mIsWhitelisted = aud.a(parambin.h());
      mTimeLeft = aud.a(parambin.i());
    }
    mClock = new bgk();
  }
  
  public ajc(String paramString1, String paramString2)
  {
    mStoryId = paramString1;
    mDisplayName = paramString2;
    mGeofence = null;
    mVenue = null;
    mClock = new bgk();
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
    if (!(paramObject instanceof ajc)) {
      return false;
    }
    paramObject = (ajc)paramObject;
    return TextUtils.equals(mStoryId, mStoryId);
  }
  
  public int hashCode()
  {
    return mStoryId.hashCode() + 629;
  }
}

/* Location:
 * Qualified Name:     ajc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */