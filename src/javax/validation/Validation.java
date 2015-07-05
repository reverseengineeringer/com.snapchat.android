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
import javax.validation.bootstrap.GenericBootstrap;
import javax.validation.bootstrap.ProviderSpecificBootstrap;
import javax.validation.spi.BootstrapState;
import javax.validation.spi.ValidationProvider;

public final class Validation
{
  private static ValidatorFactory buildDefaultValidatorFactory()
  {
    return new GenericBootstrapImpl((byte)0).configure().buildValidatorFactory();
  }
  
  private static GenericBootstrap byDefaultProvider()
  {
    return new GenericBootstrapImpl((byte)0);
  }
  
  private static <T extends Configuration<T>, U extends ValidationProvider<T>> ProviderSpecificBootstrap<T> byProvider(Class<U> paramClass)
  {
    return new ProviderSpecificBootstrapImpl(paramClass);
  }
  
  static class DefaultValidationProviderResolver
    implements ValidationProviderResolver
  {
    public final List<ValidationProvider<?>> getValidationProviders()
    {
      return Validation.GetValidationProviderListAction.getValidationProviderList();
    }
  }
  
  static final class GenericBootstrapImpl
    implements GenericBootstrap, BootstrapState
  {
    private ValidationProviderResolver defaultResolver;
    ValidationProviderResolver resolver;
    
    public final Configuration<?> configure()
    {
      if (resolver == null) {}
      for (ValidationProviderResolver localValidationProviderResolver = getDefaultValidationProviderResolver();; localValidationProviderResolver = resolver) {
        try
        {
          List localList = localValidationProviderResolver.getValidationProviders();
          if (localList.size() != 0) {
            break;
          }
          throw new ValidationException("Unable to create a Configuration, because no Bean Validation provider could be found. Add a provider like Hibernate Validator (RI) to your classpath.");
        }
        catch (ValidationException localValidationException)
        {
          throw localValidationException;
        }
        catch (RuntimeException localRuntimeException1)
        {
          throw new ValidationException("Unable to get available provider resolvers.", localRuntimeException1);
        }
      }
      try
      {
        Configuration localConfiguration = ((ValidationProvider)localRuntimeException1.getValidationProviders().get(0)).createGenericConfiguration$6e4efa3();
        return localConfiguration;
      }
      catch (RuntimeException localRuntimeException2)
      {
        throw new ValidationException("Unable to instantiate Configuration.", localRuntimeException2);
      }
    }
    
    public final ValidationProviderResolver getDefaultValidationProviderResolver()
    {
      if (defaultResolver == null) {
        defaultResolver = new Validation.DefaultValidationProviderResolver((byte)0);
      }
      return defaultResolver;
    }
    
    public final ValidationProviderResolver getValidationProviderResolver()
    {
      return resolver;
    }
    
    public final GenericBootstrap providerResolver(ValidationProviderResolver paramValidationProviderResolver)
    {
      resolver = paramValidationProviderResolver;
      return this;
    }
  }
  
  static final class GetValidationProviderListAction
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
  
  static final class ProviderSpecificBootstrapImpl<T extends Configuration<T>, U extends ValidationProvider<T>>
    implements ProviderSpecificBootstrap<T>
  {
    private ValidationProviderResolver resolver;
    private final Class<U> validationProviderClass;
    
    public ProviderSpecificBootstrapImpl(Class<U> paramClass)
    {
      validationProviderClass = paramClass;
    }
    
    public final T configure()
    {
      if (validationProviderClass == null) {
        throw new ValidationException("builder is mandatory. Use Validation.byDefaultProvider() to use the generic provider discovery mechanism");
      }
      Object localObject = new Validation.GenericBootstrapImpl((byte)0);
      if (resolver == null) {
        resolver = ((Validation.GenericBootstrapImpl)localObject).getDefaultValidationProviderResolver();
      }
      for (;;)
      {
        try
        {
          localObject = resolver.getValidationProviders();
          localObject = ((List)localObject).iterator();
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          ValidationProvider localValidationProvider = (ValidationProvider)((Iterator)localObject).next();
          if (!validationProviderClass.isAssignableFrom(localValidationProvider.getClass())) {
            continue;
          }
          return ((ValidationProvider)validationProviderClass.cast(localValidationProvider)).createSpecializedConfiguration$6e4efa3();
        }
        catch (RuntimeException localRuntimeException)
        {
          throw new ValidationException("Unable to get available provider resolvers.", localRuntimeException);
        }
        resolver = resolver;
      }
      throw new ValidationException("Unable to find provider: " + validationProviderClass);
    }
    
    public final ProviderSpecificBootstrap<T> providerResolver(ValidationProviderResolver paramValidationProviderResolver)
    {
      resolver = paramValidationProviderResolver;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     javax.validation.Validation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */