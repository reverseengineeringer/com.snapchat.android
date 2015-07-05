import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.zzat;

final class cb$a
  extends AdListener
  implements zzat
{
  final cb a;
  final MediationBannerListener b;
  
  public cb$a(cb paramcb, MediationBannerListener paramMediationBannerListener)
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

/* Location:
 * Qualified Name:     cb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */