import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.snapchat.android.Timber;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

public final class mj$a
  extends AdListener
  implements OnCustomRenderedAdLoadedListener
{
  private ml mAdPlacement;
  private mo mAdResponse;
  private mn mAdTransformListener;
  PublisherAdView mAdView;
  private CustomRenderedAd mCustomRenderedAd;
  private List<String> mImpressionUrls = new ArrayList();
  private boolean mShouldRecordImpressionWithAdResponse = false;
  
  mj$a(mj parammj, @cgb ml paramml, @cgb mn parammn, @cgb PublisherAdView paramPublisherAdView)
  {
    mAdPlacement = paramml;
    mAdTransformListener = parammn;
    mAdView = paramPublisherAdView;
  }
  
  protected final void a()
  {
    int j = 0;
    if ((mImpressionUrls != null) && (mImpressionUrls.size() > 0)) {
      i = 1;
    }
    while (i != 0)
    {
      Iterator localIterator = mImpressionUrls.iterator();
      for (;;)
      {
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          this$0.a(str);
          continue;
          i = 0;
          break;
        }
      }
      this$0.d(mAdPlacement);
      return;
    }
    int i = j;
    if (mCustomRenderedAd != null) {
      i = 1;
    }
    if (i != 0)
    {
      mCustomRenderedAd.recordImpression();
      this$0.d(mAdPlacement);
      return;
    }
    mShouldRecordImpressionWithAdResponse = true;
  }
  
  protected final void a(AdRequestError paramAdRequestError, Bundle paramBundle)
  {
    if (mErrorCode != AdRequestError.ErrorCode.CONTENT_NO_FILL) {
      this$0.d(mAdPlacement);
    }
    if (mAdTransformListener != null)
    {
      mo.a locala = new mo.a();
      mAdRequestError = paramAdRequestError;
      mAdResponseFieldBundle = paramBundle;
      paramAdRequestError = locala.a();
      mAdTransformListener.a(paramAdRequestError);
    }
  }
  
  public final void onAdFailedToLoad(int paramInt)
  {
    super.onAdFailedToLoad(paramInt);
    String str = "ERROR_CODE_UNKNOWN";
    Object localObject = AdRequestError.ErrorCode.ERROR_CODE_UNKNOWN;
    switch (paramInt)
    {
    }
    for (;;)
    {
      localObject = new AdRequestError((AdRequestError.ErrorCode)localObject, String.format("%s(%d)", new Object[] { str, Integer.valueOf(paramInt) }));
      Timber.c("AdManager", "onAdFailedToLoad(%s) for %s", new Object[] { ((AdRequestError)localObject).getMessage(), mAdPlacement });
      a((AdRequestError)localObject, null);
      return;
      localObject = AdRequestError.ErrorCode.ERROR_CODE_INTERNAL_ERROR;
      str = "ERROR_CODE_INTERNAL_ERROR";
      continue;
      localObject = AdRequestError.ErrorCode.ERROR_CODE_INVALID_REQUEST;
      str = "ERROR_CODE_INVALID_REQUEST";
      continue;
      localObject = AdRequestError.ErrorCode.ERROR_CODE_NETWORK_ERROR;
      str = "ERROR_CODE_NETWORK_ERROR";
      continue;
      localObject = AdRequestError.ErrorCode.ERROR_CODE_NO_FILL;
      str = "ERROR_CODE_NO_FILL";
    }
  }
  
  public final void onCustomRenderedAdLoaded(CustomRenderedAd paramCustomRenderedAd)
  {
    mCustomRenderedAd = paramCustomRenderedAd;
    paramCustomRenderedAd = paramCustomRenderedAd.getContent();
    if (mAdTransformListener != null) {
      if (TextUtils.isEmpty(paramCustomRenderedAd)) {
        a(new AdRequestError(AdRequestError.ErrorCode.EMPTY_CONTENT, "Empty adUnitUrl in handleAdResponse"), null);
      }
    }
    while (!mShouldRecordImpressionWithAdResponse)
    {
      return;
      paramCustomRenderedAd = paramCustomRenderedAd.replace(" ", "").replace("\n", "");
      Object localObject = mj.b().matcher(paramCustomRenderedAd);
      if (((Matcher)localObject).matches()) {
        paramCustomRenderedAd = ((Matcher)localObject).group(1);
      }
      try
      {
        localObject = mAdTransformListener.a(paramCustomRenderedAd);
        mImpressionUrls.addAll(mj.a((Bundle)localObject));
        paramCustomRenderedAd = ((Bundle)localObject).getString("content");
        if (paramCustomRenderedAd == null)
        {
          a(new AdRequestError(AdRequestError.ErrorCode.INVALID_AD_UNIT_URL, String.format("Invalid adUnitURL '%s' in handleAdResponse", new Object[] { paramCustomRenderedAd })), (Bundle)localObject);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        a(new AdRequestError(AdRequestError.ErrorCode.INVALID_AD_UNIT_URL, String.format("Could not parse DFP response properly: %s", new Object[] { paramCustomRenderedAd })), null);
        return;
      }
      if (paramCustomRenderedAd.equals("NO-FILL"))
      {
        a(new AdRequestError(AdRequestError.ErrorCode.CONTENT_NO_FILL, String.format("adUnitURL is '%s' in handleAdResponse", new Object[] { paramCustomRenderedAd })), localJSONException);
        return;
      }
      if (!paramCustomRenderedAd.startsWith("/"))
      {
        a(new AdRequestError(AdRequestError.ErrorCode.INVALID_AD_UNIT_URL, String.format("Invalid adUnitURL '%s' in handleAdResponse", new Object[] { paramCustomRenderedAd })), localJSONException);
        return;
      }
      mo.a locala = new mo.a();
      mTransformedUrl = paramCustomRenderedAd;
      mAdResponseFieldBundle = localJSONException;
      mAdResponse = locala.a();
      Timber.c("AdManager", "onTransformationComplete for %s with url %s", new Object[] { mAdPlacement, paramCustomRenderedAd });
      mAdTransformListener.a(mAdResponse);
      mAdTransformListener = null;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     mj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */