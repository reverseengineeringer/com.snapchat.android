import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.HttpMethod;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;

public abstract class tv
  extends ts
{
  private static final String TAG = "HyperRequestOperation";
  public ub mNetworkInterface = mProvider.a();
  public final UUID mUUID = UUID.randomUUID();
  
  public void f()
  {
    auh.NETWORK_EXECUTOR.execute(new Runnable()
    {
      public final void run()
      {
        i();
      }
    });
  }
  
  @cgb
  public uc i()
  {
    
    if (ajx.H())
    {
      Timber.f("HyperRequestOperation", "Do not send any network request for Snapkidz " + n_(), new Object[0]);
      return new uc();
    }
    String str = n_();
    Object localObject1 = c();
    Map localMap = g();
    bfk localbfk = a_();
    Object localObject2 = b();
    try
    {
      localObject1 = mNetworkInterface.a(str, (HttpMethod)localObject1, localMap, localbfk, localObject2);
      a((uc)localObject1);
      return (uc)localObject1;
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occurred while executing request: " + str, localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     tv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */