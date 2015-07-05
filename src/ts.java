import android.text.TextUtils;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public abstract class ts
{
  private static final int DEFAULT_RESPONSE_SIZE = 1024;
  public final ato mGsonWrapper = mProvider.b();
  protected List<ts.a<?>> mJsonCallbacks = new ArrayList();
  public final tt mProvider = new tt();
  
  public static bgy a(@cgb bgy parambgy)
  {
    String str = String.valueOf(System.currentTimeMillis());
    return parambgy.d(str).f(os.a(str)).h(ajx.l());
  }
  
  public static bgy b(@cgb bgy parambgy)
  {
    String str = String.valueOf(System.currentTimeMillis());
    parambgy.c(str);
    parambgy.e(os.b(str));
    if ((TextUtils.isEmpty(parambgy.c())) && (!TextUtils.isEmpty(ajx.l()))) {
      parambgy.h(ajx.l());
    }
    return parambgy;
  }
  
  public final <T> void a(Class<T> paramClass, ts.b<T> paramb)
  {
    mJsonCallbacks.add(new ts.a(paramClass, paramb));
  }
  
  public void a(@cgb uc paramuc)
  {
    Iterator localIterator = mJsonCallbacks.iterator();
    while (localIterator.hasNext())
    {
      ts.a locala = (ts.a)localIterator.next();
      Object localObject = null;
      if (mCaughtException == null)
      {
        localObject = paramuc.e();
        Class localClass = mClass;
        localObject = mGsonWrapper.a((String)localObject, localClass);
      }
      mJsonCallback.a(localObject, paramuc);
    }
  }
  
  public bfk a_()
  {
    return new bfl(1024, new bfl.b());
  }
  
  public abstract Object b();
  
  public HttpMethod c()
  {
    return HttpMethod.POST;
  }
  
  public Map<String, String> g()
  {
    TreeMap localTreeMap = new TreeMap();
    if (ReleaseManager.h()) {
      localTreeMap.put("X-Snapchat-UUID", bfs.c());
    }
    localTreeMap.put("User-Agent", bfs.a());
    localTreeMap.put("Accept-Language", bfs.b());
    localTreeMap.put("Accept-Locale", Locale.getDefault().toString());
    return localTreeMap;
  }
  
  public abstract String n_();
  
  public static final class a<T>
  {
    final Class<T> mClass;
    final ts.b<T> mJsonCallback;
    
    a(Class<T> paramClass, ts.b<T> paramb)
    {
      mClass = paramClass;
      mJsonCallback = paramb;
    }
  }
  
  public static abstract interface b<T>
  {
    public abstract void a(@cgc T paramT, @cgb uc paramuc);
  }
}

/* Location:
 * Qualified Name:     ts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */