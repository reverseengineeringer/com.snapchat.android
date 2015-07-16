import com.snapchat.android.ads.AdRequestError;
import com.snapchat.android.ads.AdRequestError.ErrorCode;

final class na$1
  implements Runnable
{
  na$1(na paramna, nc paramnc, ne paramne) {}
  
  public final void run()
  {
    try
    {
      this$0.b(val$adPlacement, val$adTransformListener);
      return;
    }
    catch (Exception localException)
    {
      if (val$adTransformListener != null)
      {
        nf.a locala;
        if ((localException instanceof AdRequestError))
        {
          locala = new nf.a();
          mAdRequestError = ((AdRequestError)localException);
        }
        for (localObject = locala.a();; localObject = locala.a())
        {
          val$adTransformListener.a((nf)localObject);
          return;
          locala = new nf.a();
          mAdRequestError = new AdRequestError(AdRequestError.ErrorCode.UNKNOWN, ((Exception)localObject).getMessage());
        }
      }
      Object localObject = val$adPlacement;
    }
  }
}

/* Location:
 * Qualified Name:     na.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */