package javax.validation;

import java.util.List;
import javax.validation.bootstrap.GenericBootstrap;
import javax.validation.spi.BootstrapState;
import javax.validation.spi.ValidationProvider;

final class Validation$GenericBootstrapImpl
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

/* Location:
 * Qualified Name:     javax.validation.Validation.GenericBootstrapImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */