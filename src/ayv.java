import com.google.gson.reflect.TypeToken;
import com.snapchat.android.SnapchatApplication;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;

@bxr
public final class ayv
{
  private static final String TAG = "CbcSlightlySecurePreferences";
  @Inject
  public aum mGson;
  public final Map<azf, Map<String, ays>> mPrefKeyToMapMap = new HashMap();
  @Inject
  public aze mSlightlySecurePreferences;
  
  public ayv()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  @chd
  public final Map<String, ays> a(@q String paramString)
  {
    Type localType = new TypeToken() {}.getType();
    return (Map)mGson.a(paramString, localType);
  }
  
  public final void a(azf paramazf, Map<String, ays> paramMap)
  {
    mSlightlySecurePreferences.a(paramazf, mGson.a(paramMap));
  }
  
  public final void a(List<akl> paramList, azf paramazf)
  {
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      akl localakl = (akl)paramList.next();
      ays localays = localakl.aw();
      localHashMap.put(mMediaId, localays);
    }
    paramList = mGson.a(localHashMap);
    mSlightlySecurePreferences.a(paramazf, paramList);
  }
}

/* Location:
 * Qualified Name:     ayv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */