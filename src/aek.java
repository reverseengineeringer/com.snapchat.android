import android.content.Context;
import android.content.Intent;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;

public final class aek
  extends ana
  implements ui.b<bku>
{
  public int a = 0;
  private akp b;
  private final DiscoverEndpointManager c;
  
  public aek(Intent paramIntent)
  {
    this(paramIntent, DiscoverEndpointManager.a());
  }
  
  private aek(Intent paramIntent, DiscoverEndpointManager paramDiscoverEndpointManager)
  {
    super(paramIntent);
    registerCallback(bku.class, this);
    c = paramDiscoverEndpointManager;
  }
  
  public final void a(Context paramContext)
  {
    b = akp.a(paramContext);
    super.a(paramContext);
  }
  
  public final void b() {}
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.GET;
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
  
  protected final String l_()
  {
    return c.b();
  }
}

/* Location:
 * Qualified Name:     aek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */