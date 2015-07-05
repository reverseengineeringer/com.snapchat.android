import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;

public final class nh
{
  private final ate mDeviceUtils;
  
  public nh()
  {
    this(ate.a());
  }
  
  private nh(ate paramate)
  {
    mDeviceUtils = paramate;
  }
  
  @Deprecated
  public static void a(String paramString, Throwable paramThrowable)
  {
    new ErrorMetric("OUT_OF_MEMORY").a(paramThrowable).a("method", paramString).a("memory_class", Integer.valueOf(ate.b(SnapchatApplication.b()))).d();
  }
  
  public static void a(Throwable paramThrowable)
  {
    new ErrorMetric("OUT_OF_MEMORY").a(paramThrowable).a("memory_class", Integer.valueOf(ate.b(SnapchatApplication.b()))).d();
  }
}

/* Location:
 * Qualified Name:     nh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */