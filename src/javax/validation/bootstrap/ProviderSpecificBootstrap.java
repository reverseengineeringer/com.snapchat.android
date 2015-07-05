package javax.validation.bootstrap;

import javax.validation.Configuration;
import javax.validation.ValidationProviderResolver;

public abstract interface ProviderSpecificBootstrap<T extends Configuration<T>>
{
  public abstract T configure();
  
  public abstract ProviderSpecificBootstrap<T> providerResolver(ValidationProviderResolver paramValidationProviderResolver);
}

/* Location:
 * Qualified Name:     javax.validation.bootstrap.ProviderSpecificBootstrap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */