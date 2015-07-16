import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest.Builder;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;
import com.snapchat.android.api2.framework.HttpMethod;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;

public final class na
{
  public static final String AD_RESPONSE_CONTENT_PARAM = "content";
  public static final String AD_RESPONSE_CONTENT_TYPE_PARAM = "type";
  public static final String AD_RESPONSE_DURATION_PARAM = "duration";
  public static final String AD_RESPONSE_IMAGE_MEDIA_TYPE = "image";
  public static final String AD_RESPONSE_IMP_URL_PARAM = "imp-url";
  public static final String AD_RESPONSE_MEDIA_ZIPPED_WITH_OVERLAY_PARAM = "media_zipped_with_overlay";
  public static final String AD_RESPONSE_THIRD_PARTY_TRACK_URLS_PARAM = "third_party_urls";
  private static final String APP_ID = "snapchat";
  private static final na INSTANCE = new na();
  private static final Pattern PATTERN = Pattern.compile("(?i)<html><body[^>]*>(.*)</body></html>");
  private static final String TAG = "AdManager";
  protected final Map<String, na.a> mAdResponseControllerMap;
  public Context mAppContext;
  public final nb mConfiguration;
  public final Handler mUIThreadHandler = new Handler(Looper.getMainLooper());
  
  private na()
  {
    this(new nb());
  }
  
  private na(@chc nb paramnb)
  {
    mConfiguration = paramnb;
    mAdResponseControllerMap = new HashMap();
  }
  
  protected static List<String> a(Bundle paramBundle)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramBundle == null) {
      return localArrayList;
    }
    if (paramBundle.containsKey("imp-url")) {
      localArrayList.add(paramBundle.getString("imp-url"));
    }
    while (paramBundle.containsKey("third_party_urls"))
    {
      localArrayList.addAll(paramBundle.getStringArrayList("third_party_urls"));
      return localArrayList;
    }
    return localArrayList;
  }
  
  public static na a()
  {
    return INSTANCE;
  }
  
  private static Bundle e(@chc nc paramnc)
  {
    paramnc = paramnc.c();
    if (akr.a() != null)
    {
      Object localObject = akr.ad();
      if (localObject != null)
      {
        localObject = ((Map)localObject).entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          paramnc.putString((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
    }
    return paramnc;
  }
  
  protected final void a(final String paramString)
  {
    if (!paramString.toLowerCase(Locale.US).startsWith("https://")) {
      return;
    }
    new ul()
    {
      public final HttpMethod getMethod()
      {
        return HttpMethod.GET;
      }
      
      public final Object getRequestPayload()
      {
        return null;
      }
      
      public final String getUrl()
      {
        return paramString;
      }
      
      public final void onResult(@chc us paramAnonymousus)
      {
        super.onResult(paramAnonymousus);
        paramAnonymousus = paramString;
      }
    }.execute();
  }
  
  public final void a(@chc nc paramnc)
  {
    paramnc = paramnc.b();
    if (!mAdResponseControllerMap.containsKey(paramnc)) {}
  }
  
  public final void a(@chc nc paramnc, long paramLong)
  {
    paramnc.b();
    paramnc.b();
    nb localnb = mConfiguration;
    String str = paramnc.d();
    long l = mStudySettings.a("AdManager", str);
    if (paramLong >= l)
    {
      c(paramnc);
      return;
    }
  }
  
  public final void a(@chc final nc paramnc, final ne paramne)
  {
    mUIThreadHandler.post(new Runnable()
    {
      public final void run()
      {
        try
        {
          b(paramnc, paramne);
          return;
        }
        catch (Exception localException)
        {
          if (paramne != null)
          {
            nf.a locala;
            if ((localException instanceof AdRequestError))
            {
              locala = new nf.a();
              mAdRequestError = ((AdRequestError)localException);
            }
            for (localObject = locala.a();; localObject = locala.a())
            {
              paramne.a((nf)localObject);
              return;
              locala = new nf.a();
              mAdRequestError = new AdRequestError(AdRequestError.ErrorCode.UNKNOWN, ((Exception)localObject).getMessage());
            }
          }
          Object localObject = paramnc;
        }
      }
    });
  }
  
  public final void a(nf paramnf, long paramLong)
  {
    if (paramnf == null) {}
    for (;;)
    {
      return;
      if ((!paramnf.a().booleanValue()) && (paramLong < mImpressionViewThreshold)) {
        return;
      }
      if (paramnf == null) {}
      for (paramnf = null; paramnf == null; paramnf = mAdResponseFieldBundle) {
        return;
      }
      paramnf = a(paramnf).iterator();
      while (paramnf.hasNext()) {
        a((String)paramnf.next());
      }
    }
  }
  
  protected final na.a b(@chc nc paramnc, @chc ne paramne)
  {
    Object localObject;
    if (!mConfiguration.mStudySettings.a("AdManager", "is_active", true))
    {
      paramnc = paramnc.b();
      paramne = new AdRequestError(AdRequestError.ErrorCode.ADMANAGER_INACTIVE, "AdManager is inactive");
      localObject = (na.a)mAdResponseControllerMap.get(paramnc);
      if (localObject != null) {
        if (na.a.a((na.a)localObject) == null) {
          break label224;
        }
      }
    }
    label224:
    for (paramnc = amAdResponseFieldBundle;; paramnc = null)
    {
      ((na.a)localObject).a(paramne, paramnc);
      return null;
      localObject = paramnc.b();
      if (mAdResponseControllerMap.containsKey(localObject)) {}
      localObject = new PublisherAdView(mAppContext);
      ((PublisherAdView)localObject).setAdUnitId(paramnc.a());
      ((PublisherAdView)localObject).setAdSizes(new AdSize[] { new AdSize(320, 50), AdSize.SMART_BANNER });
      paramne = new na.a(paramnc, paramne, (PublisherAdView)localObject);
      ((PublisherAdView)localObject).setOnCustomRenderedAdLoadedListener(paramne);
      ((PublisherAdView)localObject).setAdListener(paramne);
      mAdResponseControllerMap.put(paramnc.b(), paramne);
      paramnc = new AdMobExtras(e(paramnc));
      paramnc = new PublisherAdRequest.Builder().addNetworkExtras(paramnc).setManualImpressionsEnabled(true).build();
      mAdView.loadAd(paramnc);
      return paramne;
    }
  }
  
  public final void b(@chc nc paramnc)
  {
    if (mAdResponseControllerMap.containsKey(paramnc.b())) {
      c(paramnc);
    }
  }
  
  protected final void c(nc paramnc)
  {
    if (paramnc == null) {
      return;
    }
    paramnc = (na.a)mAdResponseControllerMap.get(paramnc.b());
    if (paramnc != null)
    {
      paramnc.a();
      return;
    }
  }
  
  protected final void d(nc paramnc)
  {
    if (paramnc == null) {
      return;
    }
    mAdResponseControllerMap.remove(paramnc.b());
  }
  
  public final class a
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
    
    a(@chc nc paramnc, @chc ne paramne, @chc PublisherAdView paramPublisherAdView)
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
            a(str);
            continue;
            i = 0;
            break;
          }
        }
        d(mAdPlacement);
        return;
      }
      int i = j;
      if (mCustomRenderedAd != null) {
        i = 1;
      }
      if (i != 0)
      {
        mCustomRenderedAd.recordImpression();
        d(mAdPlacement);
        return;
      }
      mShouldRecordImpressionWithAdResponse = true;
    }
    
    protected final void a(AdRequestError paramAdRequestError, Bundle paramBundle)
    {
      if (mErrorCode != AdRequestError.ErrorCode.CONTENT_NO_FILL) {
        d(mAdPlacement);
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
}

/* Location:
 * Qualified Name:     na
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */