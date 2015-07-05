import android.os.Bundle;

public final class ms
  extends ml
{
  public static final String AD_PLACEMENT_PRODUCT_ID = "story";
  public static final String POSITION_PARAM = "position";
  public static final String STORY_AD_PAGE_IMPRESSION_DURATION_KEY = "story_ad_page_impression_duration";
  private final int mPosition;
  private final mr mStream;
  
  public ms(mr parammr, int paramInt)
  {
    mPosition = paramInt;
    mStream = parammr;
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
 * Qualified Name:     ms
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */