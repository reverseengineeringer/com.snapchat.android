package com.squareup.otto;

import boc;
import bod;
import boe;
import bof;
import boi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

public class Bus
{
  public static final String DEFAULT_IDENTIFIER = "default";
  private final boi enforcer;
  private final ThreadLocal<ConcurrentLinkedQueue<a>> eventsToDispatch = new ThreadLocal() {};
  private final Map<Class<?>, Set<Class<?>>> flattenHierarchyCache = new HashMap();
  private final bof handlerFinder;
  private final ConcurrentMap<Class<?>, Set<bod>> handlersByType = new ConcurrentHashMap();
  private final String identifier;
  private final ThreadLocal<Boolean> isDispatching = new ThreadLocal() {};
  private final ConcurrentMap<Class<?>, boe> producersByType = new ConcurrentHashMap();
  
  public Bus(boi paramboi)
  {
    this(paramboi, "default");
  }
  
  private Bus(boi paramboi, String paramString)
  {
    this(paramboi, paramString, bof.a);
  }
  
  private Bus(boi paramboi, String paramString, bof parambof)
  {
    enforcer = paramboi;
    identifier = paramString;
    handlerFinder = parambof;
  }
  
  private Set<bod> a(Class<?> paramClass)
  {
    return (Set)handlersByType.get(paramClass);
  }
  
  private void a()
  {
    if (((Boolean)isDispatching.get()).booleanValue()) {
      return;
    }
    isDispatching.set(Boolean.valueOf(true));
    try
    {
      for (;;)
      {
        a locala = (a)((ConcurrentLinkedQueue)eventsToDispatch.get()).poll();
        if (locala == null) {
          break;
        }
        if (b.c) {
          a(a, b);
        }
      }
    }
    finally
    {
      isDispatching.set(Boolean.valueOf(false));
    }
  }
  
  private static void a(bod parambod, boe paramboe)
  {
    Object localObject1 = null;
    try
    {
      Object localObject2 = paramboe.a();
      paramboe = (boe)localObject2;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        a("Producer " + paramboe + " threw an exception.", localInvocationTargetException);
        paramboe = (boe)localObject1;
      }
      a(paramboe, parambod);
    }
    if (paramboe == null) {
      return;
    }
  }
  
  private static void a(Object paramObject, bod parambod)
  {
    try
    {
      if (!c) {
        throw new IllegalStateException(parambod.toString() + " has been invalidated and can no longer handle events.");
      }
    }
    catch (InvocationTargetException localInvocationTargetException1)
    {
      a("Could not dispatch event: " + paramObject.getClass() + " to handler " + parambod, localInvocationTargetException1);
      return;
    }
    try
    {
      b.invoke(a, new Object[] { paramObject });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException2)
    {
      if ((localInvocationTargetException2.getCause() instanceof Error)) {
        throw ((Error)localInvocationTargetException2.getCause());
      }
      throw localInvocationTargetException2;
    }
  }
  
  private static void a(String paramString, InvocationTargetException paramInvocationTargetException)
  {
    Throwable localThrowable = paramInvocationTargetException.getCause();
    if (localThrowable != null) {
      throw new RuntimeException(paramString + ": " + localThrowable.getMessage(), localThrowable);
    }
    throw new RuntimeException(paramString + ": " + paramInvocationTargetException.getMessage(), paramInvocationTargetException);
  }
  
  private static Set<Class<?>> b(Class<?> paramClass)
  {
    LinkedList localLinkedList = new LinkedList();
    HashSet localHashSet = new HashSet();
    localLinkedList.add(paramClass);
    while (!localLinkedList.isEmpty())
    {
      paramClass = (Class)localLinkedList.remove(0);
      localHashSet.add(paramClass);
      paramClass = paramClass.getSuperclass();
      if (paramClass != null) {
        localLinkedList.add(paramClass);
      }
    }
    return localHashSet;
  }
  
  public void a(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("Event to post must not be null.");
    }
    enforcer.a(this);
    Object localObject3 = paramObject.getClass();
    Object localObject2 = (Set)flattenHierarchyCache.get(localObject3);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = b((Class)localObject3);
      flattenHierarchyCache.put(localObject3, localObject1);
    }
    int i = 0;
    localObject1 = ((Set)localObject1).iterator();
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = a((Class)((Iterator)localObject1).next());
      if ((localObject2 != null) && (!((Set)localObject2).isEmpty()))
      {
        localObject2 = ((Set)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (bod)((Iterator)localObject2).next();
          ((ConcurrentLinkedQueue)eventsToDispatch.get()).offer(new a(paramObject, (bod)localObject3));
        }
      }
    }
    for (;;)
    {
      break;
      if ((i == 0) && (!(paramObject instanceof boc))) {
        a(new boc(this, paramObject));
      }
      a();
      return;
      i = 1;
    }
  }
  
  public void b(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("Object to unregister must not be null.");
    }
    enforcer.a(this);
    Iterator localIterator = handlerFinder.a(paramObject).entrySet().iterator();
    Object localObject3;
    Object localObject1;
    Object localObject2;
    while (localIterator.hasNext())
    {
      localObject3 = (Map.Entry)localIterator.next();
      localObject1 = (Class)((Map.Entry)localObject3).getKey();
      localObject2 = (boe)producersByType.get(localObject1);
      localObject3 = (boe)((Map.Entry)localObject3).getValue();
      if ((localObject3 == null) || (!((boe)localObject3).equals(localObject2))) {
        throw new IllegalArgumentException("Missing event producer for an annotated method. Is " + paramObject.getClass() + " registered?");
      }
      producersByType.remove(localObject1)).b = false;
    }
    localIterator = handlerFinder.b(paramObject).entrySet().iterator();
    while (localIterator.hasNext())
    {
      localObject2 = (Map.Entry)localIterator.next();
      localObject1 = a((Class)((Map.Entry)localObject2).getKey());
      localObject2 = (Collection)((Map.Entry)localObject2).getValue();
      if ((localObject1 == null) || (!((Set)localObject1).containsAll((Collection)localObject2))) {
        throw new IllegalArgumentException("Missing event handler for an annotated method. Is " + paramObject.getClass() + " registered?");
      }
      localObject3 = ((Set)localObject1).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        bod localbod = (bod)((Iterator)localObject3).next();
        if (((Collection)localObject2).contains(localbod)) {
          c = false;
        }
      }
      ((Set)localObject1).removeAll((Collection)localObject2);
    }
  }
  
  public final void c(Object paramObject)
  {
    if (paramObject == null) {
      throw new NullPointerException("Object to register must not be null.");
    }
    enforcer.a(this);
    Object localObject1 = handlerFinder.a(paramObject);
    Object localObject2 = ((Map)localObject1).keySet().iterator();
    Object localObject5;
    while (((Iterator)localObject2).hasNext())
    {
      localObject4 = (Class)((Iterator)localObject2).next();
      localObject3 = (boe)((Map)localObject1).get(localObject4);
      localObject5 = (boe)producersByType.putIfAbsent(localObject4, localObject3);
      if (localObject5 != null) {
        throw new IllegalArgumentException("Producer method for type " + localObject4 + " found on type " + a.getClass() + ", but already registered by type " + a.getClass() + ".");
      }
      localObject4 = (Set)handlersByType.get(localObject4);
      if ((localObject4 != null) && (!((Set)localObject4).isEmpty()))
      {
        localObject4 = ((Set)localObject4).iterator();
        while (((Iterator)localObject4).hasNext()) {
          a((bod)((Iterator)localObject4).next(), (boe)localObject3);
        }
      }
    }
    Object localObject3 = handlerFinder.b(paramObject);
    Object localObject4 = ((Map)localObject3).keySet().iterator();
    while (((Iterator)localObject4).hasNext())
    {
      localObject5 = (Class)((Iterator)localObject4).next();
      localObject1 = (Set)handlersByType.get(localObject5);
      paramObject = localObject1;
      if (localObject1 == null)
      {
        localObject1 = new CopyOnWriteArraySet();
        localObject2 = (Set)handlersByType.putIfAbsent(localObject5, localObject1);
        paramObject = localObject2;
        if (localObject2 == null) {
          paramObject = localObject1;
        }
      }
      ((Set)paramObject).addAll((Set)((Map)localObject3).get(localObject5));
    }
    paramObject = ((Map)localObject3).entrySet().iterator();
    label485:
    while (((Iterator)paramObject).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)paramObject).next();
      localObject1 = (Class)((Map.Entry)localObject2).getKey();
      localObject1 = (boe)producersByType.get(localObject1);
      if ((localObject1 != null) && (b))
      {
        localObject2 = ((Set)((Map.Entry)localObject2).getValue()).iterator();
        for (;;)
        {
          if (!((Iterator)localObject2).hasNext()) {
            break label485;
          }
          localObject3 = (bod)((Iterator)localObject2).next();
          if (!b) {
            break;
          }
          if (c) {
            a((bod)localObject3, (boe)localObject1);
          }
        }
      }
    }
  }
  
  public String toString()
  {
    return "[Bus \"" + identifier + "\"]";
  }
  
  static final class a
  {
    final Object a;
    final bod b;
    
    public a(Object paramObject, bod parambod)
    {
      a = paramObject;
      b = parambod;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.otto.Bus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */