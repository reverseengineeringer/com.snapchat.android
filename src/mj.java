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
import com.snapchat.android.Timber;
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

public final class mj
{
  public static final String AD_RESPONSE_CONTENT_PARAM = "content";
  public static final String AD_RESPONSE_CONTENT_TYPE_PARAM = "type";
  public static final String AD_RESPONSE_DURATION_PARAM = "duration";
  public static final String AD_RESPONSE_IMAGE_MEDIA_TYPE = "image";
  public static final String AD_RESPONSE_IMP_URL_PARAM = "imp-url";
  public static final String AD_RESPONSE_MEDIA_ZIPPED_WITH_OVERLAY_PARAM = "media_zipped_with_overlay";
  public static final String AD_RESPONSE_THIRD_PARTY_TRACK_URLS_PARAM = "third_party_urls";
  private static final String APP_ID = "snapchat";
  private static final mj INSTANCE = new mj();
  private static final Pattern PATTERN = Pattern.compile("(?i)<html><body[^>]*>(.*)</body></html>");
  private static final String TAG = "AdManager";
  protected final Map<String, mj.a> mAdResponseControllerMap;
  public Context mAppContext;
  public final mk mConfiguration;
  public final Handler mUIThreadHandler = new Handler(Looper.getMainLooper());
  
  private mj()
  {
    this(new mk());
  }
  
  private mj(@cgb mk parammk)
  {
    mConfiguration = parammk;
    mAdResponseControllerMap = new HashMap();
  }
  
  protected static List<String> a(Bundle paramBundle)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramBundle == null)
    {
      Timber.e("AdManager", "extractImpressionUrls: adResponseFieldBundle is null ", new Object[0]);
      return localArrayList;
    }
    if (paramBundle.containsKey("imp-url")) {
      localArrayList.add(paramBundle.getString("imp-url"));
    }
    while (paramBundle.containsKey("third_party_urls"))
    {
      localArrayList.addAll(paramBundle.getStringArrayList("third_party_urls"));
      return localArrayList;
      Timber.e("AdManager", "extractImpressionUrls: AdResponseFieldBundle %s does not contain impression url.", new Object[] { paramBundle });
    }
    Timber.e("AdManager", "extractImpressionUrls: AdResponseFieldBundle %s does not contain third party url information.", new Object[] { paramBundle });
    return localArrayList;
  }
  
  public static mj a()
  {
    return INSTANCE;
  }
  
  private static Bundle e(@cgb ml paramml)
  {
    paramml = paramml.c();
    if (ajx.a() != null)
    {
      Object localObject = ajx.ae();
      if (localObject != null)
      {
        localObject = ((Map)localObject).entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          paramml.putString((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
    }
    return paramml;
  }
  
  protected final void a(final String paramString)
  {
    if (!paramString.toLowerCase(Locale.US).startsWith("https://"))
    {
      Timber.e("AdManager", "Impression url %s  is not an https url. No impression recorded for this url", new Object[] { paramString });
      return;
    }
    new tv()
    {
      public final void a(@cgb uc paramAnonymousuc)
      {
        super.a(paramAnonymousuc);
        if (paramAnonymousuc.d())
        {
          Timber.c("AdManager", "onResult recordImpressionByUrl url: %s, result: %s", new Object[] { paramString, paramAnonymousuc });
          return;
        }
        Timber.f("AdManager", "onResult recordImpressionByUrl url: %s, result: %s", new Object[] { paramString, paramAnonymousuc });
      }
      
      public final Object b()
      {
        return null;
      }
      
      public final HttpMethod c()
      {
        return HttpMethod.GET;
      }
      
      public final String n_()
      {
        return paramString;
      }
    }.f();
  }
  
  public final void a(@cgb ml paramml)
  {
    paramml = paramml.b();
    Timber.c("AdManager", "beginAdView for adKey:%s", new Object[] { paramml });
    if (!mAdResponseControllerMap.containsKey(paramml)) {
      Timber.c("AdManager", "WARNING: beginAdView called without a controller for adKey:%s", new Object[] { paramml });
    }
  }
  
  public final void a(@cgb ml paramml, long paramLong)
  {
    Timber.c("AdManager", "endAdView for adKey:%s, viewTime:%s ms", new Object[] { paramml.b(), Long.valueOf(paramLong) });
    String str1 = paramml.b();
    Timber.c("AdManager", "endAdView for adKey:%s, viewTime:%s ms", new Object[] { str1, Long.valueOf(paramLong) });
    mk localmk = mConfiguration;
    String str2 = paramml.d();
    long l = mStudySettings.a("AdManager", str2);
    if (paramLong >= l)
    {
      c(paramml);
      return;
    }
    Timber.c("AdManager", "recordQualifiedImpression(%s,%d) - ad not shown long enough %d for recordImpression to be called", new Object[] { str1, Long.valueOf(paramLong), Long.valueOf(l) });
  }
  
  public final void a(@cgb final ml paramml, final mn parammn)
  {
    Timber.c("AdManager", "Begin transform ad placeholder %s", new Object[] { paramml });
    mUIThreadHandler.post(new Runnable()
    {
      public final void run()
      {
        try
        {
          b(paramml, parammn);
          return;
        }
        catch (Exception localException)
        {
          mo localmo;
          if (parammn != null)
          {
            mo.a locala;
            if ((localException instanceof AdRequestError))
            {
              locala = new mo.a();
              mAdRequestError = ((AdRequestError)localException);
            }
            for (localmo = locala.a();; localmo = locala.a())
            {
              parammn.a(localmo);
              return;
              locala = new mo.a();
              mAdRequestError = new AdRequestError(AdRequestError.ErrorCode.UNKNOWN, localmo.getMessage());
            }
          }
          Timber.e("AdManager", "transformAsync error:%s for adPlaceholder:%s", new Object[] { localmo, paramml });
        }
      }
    });
  }
  
  public final void a(mo parammo, long paramLong)
  {
    if (parammo == null) {
      Timber.e("AdManager", "Received null for adResponse. No impression recorded.", new Object[0]);
    }
    for (;;)
    {
      return;
      if ((!parammo.a().booleanValue()) && (paramLong < mImpressionViewThreshold))
      {
        Timber.b("AdManager", "The ad was viewed for %s, not enough to record an impression for %s", new Object[] { Long.valueOf(paramLong), parammo });
        return;
      }
      if (parammo == null) {}
      for (Bundle localBundle = null; localBundle == null; localBundle = mAdResponseFieldBundle)
      {
        Timber.b("AdManager", "The adResponseFieldBundle was null. No impressions recorded. AdResponse: %s", new Object[] { parammo });
        return;
      }
      parammo = a(localBundle).iterator();
      while (parammo.hasNext()) {
        a((String)parammo.next());
      }
    }
  }
  
  protected final mj.a b(@cgb ml paramml, @cgb mn parammn)
  {
    Object localObject;
    if (!mConfiguration.mStudySettings.a("AdManager", "is_active", true))
    {
      paramml = paramml.b();
      parammn = new AdRequestError(AdRequestError.ErrorCode.ADMANAGER_INACTIVE, "AdManager is inactive");
      localObject = (mj.a)mAdResponseControllerMap.get(paramml);
      if (localObject != null) {
        if (mj.a.a((mj.a)localObject) == null) {
          break label240;
        }
      }
    }
    label240:
    for (paramml = amAdResponseFieldBundle;; paramml = null)
    {
      ((mj.a)localObject).a(parammn, paramml);
      return null;
      localObject = paramml.b();
      if (mAdResponseControllerMap.containsKey(localObject)) {
        Timber.b("AdManager", "Ad controller exists for placement: %s. Regardless, creating a new one.", new Object[] { paramml });
      }
      localObject = new PublisherAdView(mAppContext);
      ((PublisherAdView)localObject).setAdUnitId(paramml.a());
      ((PublisherAdView)localObject).setAdSizes(new AdSize[] { new AdSize(320, 50), AdSize.SMART_BANNER });
      parammn = new mj.a(paramml, parammn, (PublisherAdView)localObject);
      ((PublisherAdView)localObject).setOnCustomRenderedAdLoadedListener(parammn);
      ((PublisherAdView)localObject).setAdListener(parammn);
      mAdResponseControllerMap.put(paramml.b(), parammn);
      paramml = new AdMobExtras(e(paramml));
      paramml = new PublisherAdRequest.Builder().addNetworkExtras(paramml).setManualImpressionsEnabled(true).build();
      mAdView.loadAd(paramml);
      return parammn;
    }
  }
  
  public final void b(@cgb ml paramml)
  {
    if (mAdResponseControllerMap.containsKey(paramml.b())) {
      c(paramml);
    }
  }
  
  protected final void c(ml paramml)
  {
    if (paramml == null)
    {
      Timber.e("AdManager", "recordImpressionForAdPlacement: adPlacement is null", new Object[0]);
      return;
    }
    mj.a locala = (mj.a)mAdResponseControllerMap.get(paramml.b());
    if (locala != null)
    {
      locala.a();
      return;
    }
    Timber.c("AdManager", "No controller for recordImpressionForAdPlacement on %s, probably duplicate call", new Object[] { paramml });
  }
  
  protected final void d(ml paramml)
  {
    if (paramml == null)
    {
      Timber.e("AdManager", "removeControllerForAdPlacement: adPlacement is null", new Object[0]);
      return;
    }
    mAdResponseControllerMap.remove(paramml.b());
  }
  
  public final class a
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
    
    a(@cgb ml paramml, @cgb mn parammn, @cgb PublisherAdView paramPublisherAdView)
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
}

/* Location:
 * Qualified Name:     mj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */