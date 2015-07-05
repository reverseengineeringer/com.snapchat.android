import android.os.Bundle;
import android.text.TextUtils;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;

public final class mo
{
  private static final String AD_KEY_PARAM = "ad_key";
  public static final String AD_NO_FILL_STRING = "NO-FILL";
  public final AdRequestError mAdRequestError;
  public final Bundle mAdResponseFieldBundle;
  public int mAdStreamPosition;
  long mImpressionViewThreshold;
  public final String mTransformedUrl;
  
  private mo(String paramString, AdRequestError paramAdRequestError, Bundle paramBundle, long paramLong)
  {
    mTransformedUrl = paramString;
    mAdRequestError = paramAdRequestError;
    mAdResponseFieldBundle = paramBundle;
    mImpressionViewThreshold = paramLong;
  }
  
  @cgc
  public final Boolean a()
  {
    boolean bool = false;
    if ((mAdRequestError != null) && (mAdRequestError.mErrorCode == AdRequestError.ErrorCode.CONTENT_NO_FILL))
    {
      i = 1;
      if (i == 0) {
        if ((mAdRequestError == null) || (mAdRequestError.mErrorCode != AdRequestError.ErrorCode.ERROR_CODE_NO_FILL)) {
          break label66;
        }
      }
    }
    label66:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        bool = true;
      }
      return Boolean.valueOf(bool);
      i = 0;
      break;
    }
  }
  
  public final boolean b()
  {
    return (mAdRequestError == null) || (a().booleanValue());
  }
  
  @cgc
  public final String c()
  {
    if ((mAdRequestError != null) || (TextUtils.isEmpty(mTransformedUrl))) {}
    label127:
    for (;;)
    {
      return null;
      if ((mAdResponseFieldBundle != null) && (mAdResponseFieldBundle.containsKey("ad_key"))) {
        return mAdResponseFieldBundle.getString("ad_key");
      }
      int i = mTransformedUrl.indexOf("?");
      if (i >= 0)
      {
        String[] arrayOfString1 = mTransformedUrl.substring(i + 1).split("&");
        int j = arrayOfString1.length;
        i = 0;
        for (;;)
        {
          if (i >= j) {
            break label127;
          }
          String[] arrayOfString2 = arrayOfString1[i].split("=");
          if (arrayOfString2[0].equals("ad_key"))
          {
            if (arrayOfString2.length <= 1) {
              break;
            }
            return arrayOfString2[1];
          }
          i += 1;
        }
      }
    }
  }
  
  public static final class a
  {
    AdRequestError mAdRequestError;
    Bundle mAdResponseFieldBundle;
    private long mImpressionViewThresholdMilliSeconds;
    String mTransformedUrl;
    
    public final mo a()
    {
      return new mo(mTransformedUrl, mAdRequestError, mAdResponseFieldBundle, mImpressionViewThresholdMilliSeconds, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     mo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */