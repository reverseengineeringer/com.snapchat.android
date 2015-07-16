import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class bpc
{
  private static final Map<Class<?>, Map<Class<?>, Method>> a = new HashMap();
  private static final Map<Class<?>, Map<Class<?>, Set<Method>>> b = new HashMap();
  
  static Map<Class<?>, bpf> a(Object paramObject)
  {
    Object localObject = paramObject.getClass();
    HashMap localHashMap = new HashMap();
    if (!a.containsKey(localObject)) {
      a((Class)localObject);
    }
    localObject = (Map)a.get(localObject);
    if (!((Map)localObject).isEmpty())
    {
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        bpf localbpf = new bpf(paramObject, (Method)localEntry.getValue());
        localHashMap.put(localEntry.getKey(), localbpf);
      }
    }
    return localHashMap;
  }
  
  private static void a(Class<?> paramClass)
  {
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int j = arrayOfMethod.length;
    int i = 0;
    if (i < j)
    {
      Method localMethod = arrayOfMethod[i];
      Object localObject1;
      if (!localMethod.isBridge())
      {
        if (!localMethod.isAnnotationPresent(bpi.class)) {
          break label271;
        }
        localObject1 = localMethod.getParameterTypes();
        if (localObject1.length != 1) {
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation but requires " + localObject1.length + " arguments.  Methods must require a single argument.");
        }
        Object localObject2 = localObject1[0];
        if (((Class)localObject2).isInterface()) {
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation on " + localObject2 + " which is an interface.  Subscription must be on a concrete class type.");
        }
        if ((localMethod.getModifiers() & 0x1) == 0) {
          throw new IllegalArgumentException("Method " + localMethod + " has @Subscribe annotation on " + localObject2 + " but is not 'public'.");
        }
        Set localSet = (Set)localHashMap1.get(localObject2);
        localObject1 = localSet;
        if (localSet == null)
        {
          localObject1 = new HashSet();
          localHashMap1.put(localObject2, localObject1);
        }
        ((Set)localObject1).add(localMethod);
      }
      for (;;)
      {
        i += 1;
        break;
        label271:
        if (localMethod.isAnnotationPresent(bph.class))
        {
          localObject1 = localMethod.getParameterTypes();
          if (localObject1.length != 0) {
            throw new IllegalArgumentException("Method " + localMethod + "has @Produce annotation but requires " + localObject1.length + " arguments.  Methods must require zero arguments.");
          }
          if (localMethod.getReturnType() == Void.class) {
            throw new IllegalArgumentException("Method " + localMethod + " has a return type of void.  Must declare a non-void type.");
          }
          localObject1 = localMethod.getReturnType();
          if (((Class)localObject1).isInterface()) {
            throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation on " + localObject1 + " which is an interface.  Producers must return a concrete class type.");
          }
          if (localObject1.equals(Void.TYPE)) {
            throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation but has no return type.");
          }
          if ((localMethod.getModifiers() & 0x1) == 0) {
            throw new IllegalArgumentException("Method " + localMethod + " has @Produce annotation on " + localObject1 + " but is not 'public'.");
          }
          if (localHashMap2.containsKey(localObject1)) {
            throw new IllegalArgumentException("Producer for type " + localObject1 + " has already been registered.");
          }
          localHashMap2.put(localObject1, localMethod);
        }
      }
    }
    a.put(paramClass, localHashMap2);
    b.put(paramClass, localHashMap1);
  }
  
  static Map<Class<?>, Set<bpe>> b(Object paramObject)
  {
    Object localObject = paramObject.getClass();
    HashMap localHashMap = new HashMap();
    if (!b.containsKey(localObject)) {
      a((Class)localObject);
    }
    localObject = (Map)b.get(localObject);
    if (!((Map)localObject).isEmpty())
    {
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        HashSet localHashSet = new HashSet();
        Iterator localIterator = ((Set)localEntry.getValue()).iterator();
        while (localIterator.hasNext()) {
          localHashSet.add(new bpe(paramObject, (Method)localIterator.next()));
        }
        localHashMap.put(localEntry.getKey(), localHashSet);
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     bpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */