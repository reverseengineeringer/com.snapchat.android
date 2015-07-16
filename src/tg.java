import com.snapchat.android.SnapchatApplication;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;
import javax.inject.Inject;

public abstract class tg
  extends ul
{
  @Inject
  protected yj mCashAuthManager;
  @Inject
  protected ub mEntityFactory;
  @Inject
  protected va mSquareOkHttpClientFactory;
  
  protected tg()
  {
    SnapchatApplication.b().c().a(this);
    mNetworkInterface = new ut(mEntityFactory, mSquareOkHttpClientFactory);
  }
  
  protected abstract String a();
  
  public Map<String, String> getHeaders(Object paramObject)
  {
    Object localObject = mCashAuthManager.a();
    if (localObject == null) {
      throw new RuntimeException("We shouldn't ever be creating a SquareRequestTask with a null CashAuthToken!" + getClass().getName() + " " + getUrl());
    }
    paramObject = new TreeMap();
    ((Map)paramObject).put("Authorization", "Bearer " + a);
    ((Map)paramObject).put("Accept", "application/json; charset=utf-8");
    ((Map)paramObject).put("Content-Type", "application/json");
    localObject = ayy.a().c(false);
    if (localObject != null) {
      ((Map)paramObject).put("X-SQ-DEVICE-ID", localObject);
    }
    return (Map<String, String>)paramObject;
  }
  
  public String getUrl()
  {
    bgr.a();
    return avz.a(Arrays.asList(new String[] { bgr.e(), "v1/me", a() }), "/");
  }
}

/* Location:
 * Qualified Name:     tg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */