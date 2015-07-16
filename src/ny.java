import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;

public final class ny
{
  private final aud mDeviceUtils;
  
  public ny()
  {
    this(aud.a());
  }
  
  private ny(aud paramaud)
  {
    mDeviceUtils = paramaud;
  }
  
  @Deprecated
  public static void a(String paramString, Throwable paramThrowable)
  {
    new ErrorMetric("OUT_OF_MEMORY").a(paramThrowable).a("method", paramString).a("memory_class", Integer.valueOf(aud.b(SnapchatApplication.b()))).e();
  }
  
  public static void a(Throwable paramThrowable)
  {
    new ErrorMetric("OUT_OF_MEMORY").a(paramThrowable).a("memory_class", Integer.valueOf(aud.b(SnapchatApplication.b()))).e();
  }
}

/* Location:
 * Qualified Name:     ny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */