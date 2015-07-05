import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzat;

final class cb$b
  extends AdListener
  implements zzat
{
  final cb a;
  final MediationInterstitialListener b;
  
  public cb$b(cb paramcb, MediationInterstitialListener paramMediationInterstitialListener)
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

/* Location:
 * Qualified Name:     cb.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */