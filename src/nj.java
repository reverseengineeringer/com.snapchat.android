import android.os.Bundle;

public final class nj
  extends nc
{
  public static final String AD_PLACEMENT_PRODUCT_ID = "story";
  public static final String POSITION_PARAM = "position";
  public static final String STORY_AD_PAGE_IMPRESSION_DURATION_KEY = "story_ad_page_impression_duration";
  private final int mPosition;
  private final ni mStream;
  
  public nj(ni paramni, int paramInt)
  {
    mPosition = paramInt;
    mStream = paramni;
  }
  
  public final String a()
  {
    return mStream.mStoryAdStreamRequestInfo.mAdUnitId;
  }
  
  public final String b()
  {
    return mStream.b() + ":" + mPosition;
  }
  
  public final Bundle c()
  {
    Bundle localBundle = mStream.mStoryAdStreamRequestInfo.mTargetingParams;
    localBundle.putInt("position", mPosition);
    return localBundle;
  }
  
  public final String d()
  {
    return "story_ad_page_impression_duration";
  }
}

/* Location:
 * Qualified Name:     nj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */