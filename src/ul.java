import com.snapchat.android.api2.framework.HttpMethod;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutorService;

public abstract class ul
  extends ui
{
  private static final String TAG = "HyperRequestOperation";
  public ur mNetworkInterface = mProvider.a();
  public final UUID mUUID = UUID.randomUUID();
  
  public void execute()
  {
    avf.NETWORK_EXECUTOR.execute(new Runnable()
    {
      public final void run()
      {
        executeSynchronously();
      }
    });
  }
  
  @chc
  public us executeSynchronously()
  {
    
    if (akr.H())
    {
      new StringBuilder("Do not send any network request for Snapkidz ").append(getUrl());
      return new us();
    }
    String str = getUrl();
    Object localObject1 = getMethod();
    bgk localbgk = getResponseBuffer();
    Object localObject2 = getRequestPayload();
    Map localMap = getHeaders(localObject2);
    try
    {
      localObject1 = mNetworkInterface.a(str, (HttpMethod)localObject1, localMap, localbgk, localObject2);
      onResult((us)localObject1);
      return (us)localObject1;
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occurred while executing request: " + str, localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     ul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */