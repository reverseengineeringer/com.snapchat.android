import com.snapchat.android.SnapchatApplication;
import javax.inject.Inject;

public final class tt
{
  @Inject
  protected ato mGsonWrapper;
  @Inject
  protected ud mNetworkInterface;
  
  public tt()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final ub a()
  {
    return mNetworkInterface;
  }
  
  public final ato b()
  {
    return mGsonWrapper;
  }
}

/* Location:
 * Qualified Name:     tt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */