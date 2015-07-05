import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzat;
import com.google.android.gms.internal.zzbe;
import com.google.android.gms.internal.zzhw;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;

public final class cb
  implements MediationBannerAdapter, MediationInterstitialAdapter
{
  private AdView a;
  private InterstitialAd b;
  
  private static AdRequest a(Context paramContext, MediationAdRequest paramMediationAdRequest, Bundle paramBundle1, Bundle paramBundle2)
  {
    AdRequest.Builder localBuilder = new AdRequest.Builder();
    Object localObject = paramMediationAdRequest.getBirthday();
    if (localObject != null) {
      localBuilder.setBirthday((Date)localObject);
    }
    int i = paramMediationAdRequest.getGender();
    if (i != 0) {
      localBuilder.setGender(i);
    }
    localObject = paramMediationAdRequest.getKeywords();
    if (localObject != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localBuilder.addKeyword((String)((Iterator)localObject).next());
      }
    }
    localObject = paramMediationAdRequest.getLocation();
    if (localObject != null) {
      localBuilder.setLocation((Location)localObject);
    }
    if (paramMediationAdRequest.isTesting()) {
      localBuilder.addTestDevice(zzbe.zzbD().zzz(paramContext));
    }
    boolean bool;
    if (paramBundle2.getInt("tagForChildDirectedTreatment") != -1)
    {
      if (paramBundle2.getInt("tagForChildDirectedTreatment") == 1)
      {
        bool = true;
        localBuilder.tagForChildDirectedTreatment(bool);
      }
    }
    else {
      if (paramBundle1 == null) {
        break label251;
      }
    }
    for (;;)
    {
      paramBundle1.putInt("gw", 1);
      paramBundle1.putString("mad_hac", paramBundle2.getString("mad_hac"));
      if (!TextUtils.isEmpty(paramBundle2.getString("adJson"))) {
        paramBundle1.putString("_ad", paramBundle2.getString("adJson"));
      }
      paramBundle1.putBoolean("_noRefresh", true);
      localBuilder.addNetworkExtrasBundle(cb.class, paramBundle1);
      return localBuilder.build();
      bool = false;
      break;
      label251:
      paramBundle1 = new Bundle();
    }
  }
  
  public final View getBannerView()
  {
    return a;
  }
  
  public final void onDestroy()
  {
    if (a != null)
    {
      a.destroy();
      a = null;
    }
    if (b != null) {
      b = null;
    }
  }
  
  public final void onPause()
  {
    if (a != null) {
      a.pause();
    }
  }
  
  public final void onResume()
  {
    if (a != null) {
      a.resume();
    }
  }
  
  public final void requestBannerAd(Context paramContext, MediationBannerListener paramMediationBannerListener, Bundle paramBundle1, AdSize paramAdSize, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    a = new AdView(paramContext);
    a.setAdSize(new AdSize(paramAdSize.getWidth(), paramAdSize.getHeight()));
    a.setAdUnitId(paramBundle1.getString("pubid"));
    a.setAdListener(new cb.a(this, paramMediationBannerListener));
    a.loadAd(a(paramContext, paramMediationAdRequest, paramBundle2, paramBundle1));
  }
  
  public final void requestInterstitialAd(Context paramContext, MediationInterstitialListener paramMediationInterstitialListener, Bundle paramBundle1, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    b = new InterstitialAd(paramContext);
    b.setAdUnitId(paramBundle1.getString("pubid"));
    b.setAdListener(new cb.b(this, paramMediationInterstitialListener));
    b.loadAd(a(paramContext, paramMediationAdRequest, paramBundle2, paramBundle1));
  }
  
  public final void showInterstitial()
  {
    b.show();
  }
  
  static final class a
    extends AdListener
    implements zzat
  {
    final cb a;
    final MediationBannerListener b;
    
    public a(cb paramcb, MediationBannerListener paramMediationBannerListener)
    {
      a = paramcb;
      b = paramMediationBannerListener;
    }
    
    public final void onAdClicked()
    {
      b.onAdClicked(a);
    }
    
    public final void onAdClosed()
    {
      b.onAdClosed(a);
    }
    
    public final void onAdFailedToLoad(int paramInt)
    {
      b.onAdFailedToLoad(a, paramInt);
    }
    
    public final void onAdLeftApplication()
    {
      b.onAdLeftApplication(a);
    }
    
    public final void onAdLoaded()
    {
      b.onAdLoaded(a);
    }
    
    public final void onAdOpened()
    {
      b.onAdOpened(a);
    }
  }
  
  static final class b
    extends AdListener
    implements zzat
  {
    final cb a;
    final MediationInterstitialListener b;
    
    public b(cb paramcb, MediationInterstitialListener paramMediationInterstitialListener)
    {
      a = paramcb;
      b = paramMediationInterstitialListener;
    }
    
    public final void onAdClicked()
    {
      b.onAdClicked(a);
    }
    
    public final void onAdClosed()
    {
      b.onAdClosed(a);
    }
    
    public final void onAdFailedToLoad(int paramInt)
    {
      b.onAdFailedToLoad(a, paramInt);
    }
    
    public final void onAdLeftApplication()
    {
      b.onAdLeftApplication(a);
    }
    
    public final void onAdLoaded()
    {
      b.onAdLoaded(a);
    }
    
    public final void onAdOpened()
    {
      b.onAdOpened(a);
    }
  }
}

/* Location:
 * Qualified Name:     cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */