package javax.validation.spi;

import javax.validation.ValidationProviderResolver;

public abstract interface BootstrapState
{
  public abstract ValidationProviderResolver getDefaultValidationProviderResolver();
  
  public abstract ValidationProviderResolver getValidationProviderResolver();
}

/* Location:
 * Qualified Name:     javax.validation.spi.BootstrapState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */