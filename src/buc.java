import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.net.URL;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;

public final class buc
  implements URLStreamHandlerFactory
{
  private static final Object a = new Object();
  private static buc b;
  private LinkedList c = new LinkedList();
  private boolean d = false;
  private boolean e = false;
  
  public buc(int paramInt, btl parambtl, bsw parambsw)
  {
    if ((paramInt == buc.a.c) || (paramInt == buc.a.a)) {
      c.add(new btv(parambtl, parambsw));
    }
    if ((paramInt == buc.a.c) || (paramInt == buc.a.b)) {
      c.add(new btx(parambtl, parambsw));
    }
  }
  
  public static buc a()
  {
    return b;
  }
  
  /* Error */
  private boolean d()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: getstatic 24	buc:a	Ljava/lang/Object;
    //   7: astore_2
    //   8: aload_2
    //   9: monitorenter
    //   10: getstatic 57	buc:b	Lbuc;
    //   13: aload_0
    //   14: if_acmpeq +9 -> 23
    //   17: aload_2
    //   18: monitorexit
    //   19: aload_0
    //   20: monitorexit
    //   21: iload_1
    //   22: ireturn
    //   23: aload_0
    //   24: getfield 33	buc:d	Z
    //   27: ifeq +18 -> 45
    //   30: invokestatic 60	buc:e	()Z
    //   33: ifeq +12 -> 45
    //   36: aload_0
    //   37: iconst_0
    //   38: putfield 33	buc:d	Z
    //   41: aconst_null
    //   42: putstatic 57	buc:b	Lbuc;
    //   45: aload_2
    //   46: monitorexit
    //   47: aload_0
    //   48: getfield 33	buc:d	Z
    //   51: istore_1
    //   52: goto -33 -> 19
    //   55: astore_3
    //   56: aload_2
    //   57: monitorexit
    //   58: aload_3
    //   59: athrow
    //   60: astore_2
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	buc
    //   1	51	1	bool	boolean
    //   60	4	2	localObject2	Object
    //   55	4	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   10	19	55	finally
    //   23	45	55	finally
    //   45	47	55	finally
    //   4	10	60	finally
    //   47	52	60	finally
    //   56	60	60	finally
  }
  
  private static boolean e()
  {
    Field[] arrayOfField = URL.class.getDeclaredFields();
    int j = arrayOfField.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Field localField = arrayOfField[i];
        if (URLStreamHandlerFactory.class.isAssignableFrom(localField.getType())) {}
        try
        {
          int k = btg.f;
          localField.setAccessible(true);
          localField.set(null, null);
          localField.setAccessible(false);
          URL.setURLStreamHandlerFactory(null);
          return true;
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          btd.c();
          i += 1;
        }
        catch (SecurityException localSecurityException)
        {
          for (;;)
          {
            btd.c();
          }
        }
        catch (Throwable localThrowable)
        {
          for (;;)
          {
            btd.c();
          }
        }
      }
    }
    return false;
  }
  
  private static boolean f()
  {
    Field[] arrayOfField = URL.class.getDeclaredFields();
    int j = arrayOfField.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Field localField = arrayOfField[i];
        Object localObject1;
        if (Hashtable.class.isAssignableFrom(localField.getType()))
        {
          Object localObject2 = (ParameterizedType)localField.getGenericType();
          localObject1 = (Class)localObject2.getActualTypeArguments()[0];
          localObject2 = (Class)localObject2.getActualTypeArguments()[1];
          if ((!String.class.isAssignableFrom((Class)localObject1)) || (!URLStreamHandler.class.isAssignableFrom((Class)localObject2))) {}
        }
        try
        {
          int k = btg.g;
          localField.setAccessible(true);
          localObject1 = (Hashtable)localField.get(null);
          if (localObject1 != null) {
            ((Hashtable)localObject1).clear();
          }
          localField.setAccessible(false);
          return true;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          btd.c();
          i += 1;
        }
        catch (SecurityException localSecurityException)
        {
          for (;;)
          {
            btd.c();
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          for (;;)
          {
            btd.c();
          }
        }
      }
    }
    return false;
  }
  
  public final boolean b()
  {
    for (boolean bool = true;; bool = false)
    {
      synchronized (a)
      {
        if (b != null)
        {
          if (b != this) {
            continue;
          }
          return bool;
        }
        if (!d)
        {
          bool = e;
          if (bool) {}
        }
      }
      try
      {
        URL.setURLStreamHandlerFactory(this);
        d = true;
        b = this;
        return d;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
  }
  
  public final boolean c()
  {
    boolean bool2 = false;
    for (;;)
    {
      try
      {
        d();
        if (d)
        {
          e = true;
          bool1 = f();
          boolean bool3 = d;
          if ((!bool3) || (bool1)) {
            bool2 = true;
          }
          return bool2;
        }
      }
      finally {}
      boolean bool1 = false;
    }
  }
  
  public final URLStreamHandler createURLStreamHandler(String paramString)
  {
    try
    {
      if (!e)
      {
        Iterator localIterator = c.iterator();
        while (localIterator.hasNext())
        {
          btt localbtt = (btt)localIterator.next();
          boolean bool = localbtt.a().equals(paramString);
          if (bool) {
            return localbtt;
          }
        }
      }
      return null;
    }
    catch (ThreadDeath paramString)
    {
      throw paramString;
    }
    catch (Throwable paramString)
    {
      e = true;
      btd.a(paramString);
    }
    return null;
  }
  
  public static enum a {}
}

/* Location:
 * Qualified Name:     buc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */