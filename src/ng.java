import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ng
  extends nc
{
  protected static final String DISCOVER_AD_PAGE_IMPRESSION_DURATION_KEY = "ad_page_impression_duration";
  private static final String PRODUCT_ID = "discover";
  protected static final int TITLE_SPLASH_POSITION = 0;
  private final int mAdType;
  private final String mAdUnitId;
  private final String mChannelName;
  private final String mEditionName;
  private final int mPosition;
  private final Map<String, String> mTargetingParams;
  
  private ng(String paramString1, String paramString2, String paramString3, Map<String, String> paramMap, int paramInt1, int paramInt2)
  {
    mEditionName = paramString1;
    mChannelName = paramString2;
    mAdUnitId = paramString3;
    mTargetingParams = paramMap;
    mPosition = paramInt1;
    mAdType = paramInt2;
  }
  
  public final String a()
  {
    return mAdUnitId;
  }
  
  public final String b()
  {
    return String.format("%s-%s-%s-[%s]", new Object[] { "discover", mChannelName, mEditionName, Integer.valueOf(mPosition) });
  }
  
  public final Bundle c()
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = mTargetingParams.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBundle.putString((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    return localBundle;
  }
  
  public final String d()
  {
    return "ad_page_impression_duration";
  }
  
  public final String toString()
  {
    return String.format("AdPlaceholder(%s:%s[%d]-%d)", new Object[] { mChannelName, mEditionName, Integer.valueOf(mPosition), Integer.valueOf(mAdType) });
  }
  
  public static final class a
  {
    public int mAdType;
    public String mAdUnitId;
    public String mChannelName;
    public String mEditionName;
    public int mPosition;
    public Map<String, String> mTargetingParams;
    
    public final ng a()
    {
      if (mEditionName == null) {
        throw new IllegalArgumentException("editionName should not be null.");
      }
      if (mChannelName == null) {
        throw new IllegalArgumentException("channelName should not be null.");
      }
      return new ng(mEditionName, mChannelName, mAdUnitId, mTargetingParams, mPosition, mAdType, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     ng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */