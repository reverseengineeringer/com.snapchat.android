import com.snapchat.android.SnapchatApplication;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;
import javax.inject.Inject;

public abstract class sq
  extends tv
{
  @Inject
  protected xn mCashAuthManager;
  @Inject
  protected tl mEntityFactory;
  @Inject
  protected uj mSquareOkHttpClientFactory;
  
  protected sq()
  {
    SnapchatApplication.b().c().a(this);
    mNetworkInterface = new ud(mEntityFactory, mSquareOkHttpClientFactory);
  }
  
  protected abstract String e();
  
  public final Map<String, String> g()
  {
    Object localObject = mCashAuthManager.a();
    if (localObject == null) {
      throw new RuntimeException("We shouldn't ever be creating a SquareRequestTask with a null CashAuthToken!" + getClass().getName() + " " + n_());
    }
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("Authorization", "Bearer " + a);
    localTreeMap.put("Accept", "application/json; charset=utf-8");
    localTreeMap.put("Content-Type", "application/json");
    localObject = aya.a().c(false);
    if (localObject != null) {
      localTreeMap.put("X-SQ-DEVICE-ID", localObject);
    }
    return localTreeMap;
  }
  
  public final String n_()
  {
    bfr.a();
    return avb.a(Arrays.asList(new String[] { bfr.e(), "v1/me", e() }), "/");
  }
}

/* Location:
 * Qualified Name:     sq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */