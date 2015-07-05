import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;

final class mj$3
  extends tv
{
  mj$3(mj parammj, String paramString) {}
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (paramuc.d())
    {
      Timber.c("AdManager", "onResult recordImpressionByUrl url: %s, result: %s", new Object[] { val$url, paramuc });
      return;
    }
    Timber.f("AdManager", "onResult recordImpressionByUrl url: %s, result: %s", new Object[] { val$url, paramuc });
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
    return val$url;
  }
}

/* Location:
 * Qualified Name:     mj.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */