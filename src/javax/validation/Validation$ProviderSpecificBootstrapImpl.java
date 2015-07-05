package javax.validation;

import java.util.Iterator;
import java.util.List;
import javax.validation.bootstrap.ProviderSpecificBootstrap;
import javax.validation.spi.ValidationProvider;

final class Validation$ProviderSpecificBootstrapImpl<T extends Configuration<T>, U extends ValidationProvider<T>>
  implements ProviderSpecificBootstrap<T>
{
  private ValidationProviderResolver resolver;
  private final Class<U> validationProviderClass;
  
  public Validation$ProviderSpecificBootstrapImpl(Class<U> paramClass)
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

/* Location:
 * Qualified Name:     javax.validation.Validation.ProviderSpecificBootstrapImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */