import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@cc
@cd
public final class cj
{
  @ce
  private static final Map<Class<? extends Enum<?>>, Map<String, WeakReference<? extends Enum<?>>>> a = new WeakHashMap();
  
  public static <T extends Enum<T>> cn<T> a(Class<T> paramClass, String paramString)
  {
    co.a(paramClass);
    co.a(paramString);
    paramString = (WeakReference)a(paramClass).get(paramString);
    if (paramString == null) {
      return cn.b();
    }
    return cn.b(paramClass.cast(paramString.get()));
  }
  
  @ce
  private static <T extends Enum<T>> Map<String, WeakReference<? extends Enum<?>>> a(Class<T> paramClass)
  {
    Object localObject1;
    synchronized (a)
    {
      Object localObject2 = (Map)a.get(paramClass);
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label101;
      }
      localObject1 = new HashMap();
      localObject2 = EnumSet.allOf(paramClass).iterator();
      if (((Iterator)localObject2).hasNext())
      {
        Enum localEnum = (Enum)((Iterator)localObject2).next();
        ((Map)localObject1).put(localEnum.name(), new WeakReference(localEnum));
      }
    }
    a.put(paramClass, localObject1);
    label101:
    return (Map<String, WeakReference<? extends Enum<?>>>)localObject1;
  }
}

/* Location:
 * Qualified Name:     cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */