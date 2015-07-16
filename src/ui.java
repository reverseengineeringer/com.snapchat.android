import android.text.TextUtils;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public abstract class ui
{
  private static final int DEFAULT_RESPONSE_SIZE = 1024;
  public final aum mGsonWrapper = mProvider.b();
  protected List<ui.a<?>> mJsonCallbacks = new ArrayList();
  public final uj mProvider = new uj();
  
  public static bhy buildAuthPayload(@chc bhy parambhy)
  {
    String str = String.valueOf(System.currentTimeMillis());
    return parambhy.d(str).f(pj.a(str)).h(akr.l());
  }
  
  public static bhy buildStaticAuthPayload(@chc bhy parambhy)
  {
    String str = String.valueOf(System.currentTimeMillis());
    parambhy.c(str);
    parambhy.e(pj.b(str));
    if ((TextUtils.isEmpty(parambhy.c())) && (!TextUtils.isEmpty(akr.l()))) {
      parambhy.h(akr.l());
    }
    return parambhy;
  }
  
  protected <T> void callCallback(ui.a<T> parama, @chc us paramus)
  {
    Object localObject = null;
    if (mCaughtException == null) {
      localObject = deserialize(parama, paramus.e());
    }
    mJsonCallback.onJsonResult(localObject, paramus);
  }
  
  protected <T> T deserialize(ui.a<T> parama, String paramString)
  {
    parama = mClass;
    return (T)mGsonWrapper.a(paramString, parama);
  }
  
  public Map<String, String> getHeaders(Object paramObject)
  {
    paramObject = new TreeMap();
    if (ReleaseManager.h()) {
      ((Map)paramObject).put("X-Snapchat-UUID", bgs.c());
    }
    ((Map)paramObject).put("User-Agent", bgs.a());
    ((Map)paramObject).put("Accept-Language", bgs.b());
    ((Map)paramObject).put("Accept-Locale", Locale.getDefault().toString());
    return (Map<String, String>)paramObject;
  }
  
  public List<ui.a<?>> getJsonCallbacks()
  {
    return mJsonCallbacks;
  }
  
  public HttpMethod getMethod()
  {
    return HttpMethod.POST;
  }
  
  public abstract Object getRequestPayload();
  
  public bgk getResponseBuffer()
  {
    return new bgl(1024, new bgl.b());
  }
  
  public abstract String getUrl();
  
  public void onResult(@chc us paramus)
  {
    Iterator localIterator = mJsonCallbacks.iterator();
    while (localIterator.hasNext()) {
      callCallback((ui.a)localIterator.next(), paramus);
    }
  }
  
  public final <T> void registerCallback(Class<T> paramClass, ui.b<T> paramb)
  {
    mJsonCallbacks.add(new ui.a(paramClass, paramb));
  }
  
  public static final class a<T>
  {
    final Class<T> mClass;
    final ui.b<T> mJsonCallback;
    
    a(Class<T> paramClass, ui.b<T> paramb)
    {
      mClass = paramClass;
      mJsonCallback = paramb;
    }
  }
  
  public static abstract interface b<T>
  {
    public abstract void onJsonResult(@chd T paramT, @chc us paramus);
  }
}

/* Location:
 * Qualified Name:     ui
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */