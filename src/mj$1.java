import com.snapchat.android.Timber;
import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;

final class mj$1
  implements Runnable
{
  mj$1(mj parammj, ml paramml, mn parammn) {}
  
  public final void run()
  {
    try
    {
      this$0.b(val$adPlacement, val$adTransformListener);
      return;
    }
    catch (Exception localException)
    {
      mo localmo;
      if (val$adTransformListener != null)
      {
        mo.a locala;
        if ((localException instanceof AdRequestError))
        {
          locala = new mo.a();
          mAdRequestError = ((AdRequestError)localException);
        }
        for (localmo = locala.a();; localmo = locala.a())
        {
          val$adTransformListener.a(localmo);
          return;
          locala = new mo.a();
          mAdRequestError = new AdRequestError(AdRequestError.ErrorCode.UNKNOWN, localmo.getMessage());
        }
      }
      Timber.e("AdManager", "transformAsync error:%s for adPlaceholder:%s", new Object[] { localmo, val$adPlacement });
    }
  }
}

/* Location:
 * Qualified Name:     mj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */