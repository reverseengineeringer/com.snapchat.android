import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

public final class na$a
  extends AdListener
  implements OnCustomRenderedAdLoadedListener
{
  private nc mAdPlacement;
  private nf mAdResponse;
  private ne mAdTransformListener;
  PublisherAdView mAdView;
  private CustomRenderedAd mCustomRenderedAd;
  private List<String> mImpressionUrls = new ArrayList();
  private boolean mShouldRecordImpressionWithAdResponse = false;
  
  na$a(na paramna, @chc nc paramnc, @chc ne paramne, @chc PublisherAdView paramPublisherAdView)
  {
    mAdPlacement = paramnc;
    mAdTransformListener = paramne;
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
      nf.a locala = new nf.a();
      mAdRequestError = paramAdRequestError;
      mAdResponseFieldBundle = paramBundle;
      paramAdRequestError = locala.a();
      mAdTransformListener.a(paramAdRequestError);
    }
  }
  
  public final void onAdFailedToLoad(int paramInt)
  {
    super.onAdFailedToLoad(paramInt);
    Object localObject2 = "ERROR_CODE_UNKNOWN";
    Object localObject1 = AdRequestError.ErrorCode.ERROR_CODE_UNKNOWN;
    switch (paramInt)
    {
    }
    for (;;)
    {
      localObject1 = new AdRequestError((AdRequestError.ErrorCode)localObject1, String.format("%s(%d)", new Object[] { localObject2, Integer.valueOf(paramInt) }));
      ((AdRequestError)localObject1).getMessage();
      localObject2 = mAdPlacement;
      a((AdRequestError)localObject1, null);
      return;
      localObject1 = AdRequestError.ErrorCode.ERROR_CODE_INTERNAL_ERROR;
      localObject2 = "ERROR_CODE_INTERNAL_ERROR";
      continue;
      localObject1 = AdRequestError.ErrorCode.ERROR_CODE_INVALID_REQUEST;
      localObject2 = "ERROR_CODE_INVALID_REQUEST";
      continue;
      localObject1 = AdRequestError.ErrorCode.ERROR_CODE_NETWORK_ERROR;
      localObject2 = "ERROR_CODE_NETWORK_ERROR";
      continue;
      localObject1 = AdRequestError.ErrorCode.ERROR_CODE_NO_FILL;
      localObject2 = "ERROR_CODE_NO_FILL";
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
      Object localObject = na.b().matcher(paramCustomRenderedAd);
      if (((Matcher)localObject).matches()) {
        paramCustomRenderedAd = ((Matcher)localObject).group(1);
      }
      try
      {
        localObject = mAdTransformListener.a(paramCustomRenderedAd);
        mImpressionUrls.addAll(na.a((Bundle)localObject));
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
      nf.a locala = new nf.a();
      mTransformedUrl = paramCustomRenderedAd;
      mAdResponseFieldBundle = localJSONException;
      mAdResponse = locala.a();
      paramCustomRenderedAd = mAdPlacement;
      mAdTransformListener.a(mAdResponse);
      mAdTransformListener = null;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     na.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */