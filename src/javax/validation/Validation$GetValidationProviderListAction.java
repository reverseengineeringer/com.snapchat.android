package javax.validation;

import java.lang.ref.SoftReference;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.WeakHashMap;
import javax.validation.spi.ValidationProvider;

final class Validation$GetValidationProviderListAction
  implements PrivilegedAction<List<ValidationProvider<?>>>
{
  private static final WeakHashMap<ClassLoader, SoftReference<List<ValidationProvider<?>>>> providersPerClassloader = new WeakHashMap();
  
  private void cacheValidationProviders(ClassLoader paramClassLoader, List<ValidationProvider<?>> paramList)
  {
    try
    {
      providersPerClassloader.put(paramClassLoader, new SoftReference(paramList));
      return;
    }
    finally
    {
      paramClassLoader = finally;
      throw paramClassLoader;
    }
  }
  
  /* Error */
  private List<ValidationProvider<?>> getCachedValidationProviders(ClassLoader paramClassLoader)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 22	javax/validation/Validation$GetValidationProviderListAction:providersPerClassloader	Ljava/util/WeakHashMap;
    //   5: aload_1
    //   6: invokevirtual 43	java/util/WeakHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   9: checkcast 28	java/lang/ref/SoftReference
    //   12: astore_1
    //   13: aload_1
    //   14: ifnull +15 -> 29
    //   17: aload_1
    //   18: invokevirtual 46	java/lang/ref/SoftReference:get	()Ljava/lang/Object;
    //   21: checkcast 48	java/util/List
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: areturn
    //   29: aconst_null
    //   30: astore_1
    //   31: goto -6 -> 25
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	GetValidationProviderListAction
    //   0	39	1	paramClassLoader	ClassLoader
    // Exception table:
    //   from	to	target	type
    //   2	13	34	finally
    //   17	25	34	finally
  }
  
  public static List<ValidationProvider<?>> getValidationProviderList()
  {
    GetValidationProviderListAction localGetValidationProviderListAction = new GetValidationProviderListAction();
    if (System.getSecurityManager() != null) {
      return (List)AccessController.doPrivileged(localGetValidationProviderListAction);
    }
    return localGetValidationProviderListAction.run();
  }
  
  private static List<ValidationProvider<?>> loadProviders(ClassLoader paramClassLoader)
  {
    paramClassLoader = ServiceLoader.load(ValidationProvider.class, paramClassLoader).iterator();
    ArrayList localArrayList = new ArrayList();
    while (paramClassLoader.hasNext()) {
      try
      {
        localArrayList.add(paramClassLoader.next());
      }
      catch (ServiceConfigurationError localServiceConfigurationError) {}
    }
    return localArrayList;
  }
  
  private List<ValidationProvider<?>> run()
  {
    ClassLoader localClassLoader = Thread.currentThread().getContextClassLoader();
    Object localObject = getCachedValidationProviders(localClassLoader);
    if (localObject != null) {}
    List localList;
    do
    {
      return (List<ValidationProvider<?>>)localObject;
      localList = loadProviders(localClassLoader);
      localObject = localList;
      if (!localList.isEmpty()) {
        break;
      }
      localClassLoader = Validation.DefaultValidationProviderResolver.class.getClassLoader();
      localList = getCachedValidationProviders(localClassLoader);
      localObject = localList;
    } while (localList != null);
    localObject = loadProviders(localClassLoader);
    cacheValidationProviders(localClassLoader, (List)localObject);
    return (List<ValidationProvider<?>>)localObject;
  }
}

/* Location:
 * Qualified Name:     javax.validation.Validation.GetValidationProviderListAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */