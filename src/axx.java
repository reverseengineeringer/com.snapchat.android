import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;

@bwq
public final class axx
{
  private static final String TAG = "CbcSlightlySecurePreferences";
  @Inject
  public ato mGson;
  public final Map<ayh, Map<String, axu>> mPrefKeyToMapMap = new HashMap();
  @Inject
  public ayg mSlightlySecurePreferences;
  
  public axx()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  @cgc
  public final Map<String, axu> a(@q String paramString)
  {
    Type localType = new TypeToken() {}.getType();
    return (Map)mGson.a(paramString, localType);
  }
  
  public final void a(ayh paramayh, Map<String, axu> paramMap)
  {
    mSlightlySecurePreferences.a(paramayh, mGson.a(paramMap));
  }
  
  public final void a(List<ajr> paramList, ayh paramayh)
  {
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ajr localajr = (ajr)paramList.next();
      axu localaxu = localajr.aB();
      localHashMap.put(mMediaId, localaxu);
    }
    paramList = mGson.a(localHashMap);
    mSlightlySecurePreferences.a(paramayh, paramList);
  }
}

/* Location:
 * Qualified Name:     axx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */