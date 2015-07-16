import com.snapchat.android.SnapchatApplication;
import javax.inject.Inject;

public final class uj
{
  @Inject
  protected aum mGsonWrapper;
  @Inject
  protected ut mNetworkInterface;
  
  public uj()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final ur a()
  {
    return mNetworkInterface;
  }
  
  public final aum b()
  {
    return mGsonWrapper;
  }
}

/* Location:
 * Qualified Name:     uj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */