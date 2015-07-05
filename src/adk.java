import android.content.Context;
import android.content.Intent;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;

public final class adk
  extends amd
  implements ts.b<bjt>
{
  public int a = 0;
  private ajv b;
  private final DiscoverEndpointManager c;
  
  public adk(Intent paramIntent)
  {
    this(paramIntent, DiscoverEndpointManager.a());
  }
  
  private adk(Intent paramIntent, DiscoverEndpointManager paramDiscoverEndpointManager)
  {
    super(paramIntent);
    a(bjt.class, this);
    c = paramDiscoverEndpointManager;
  }
  
  public final void a(Context paramContext)
  {
    b = ajv.a(paramContext);
    super.a(paramContext);
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.GET;
  }
  
  protected final String e()
  {
    return c.b();
  }
  
  public final void f() {}
}

/* Location:
 * Qualified Name:     adk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */