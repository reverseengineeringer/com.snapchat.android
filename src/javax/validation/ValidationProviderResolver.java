package javax.validation;

import java.util.List;
import javax.validation.spi.ValidationProvider;

public abstract interface ValidationProviderResolver
{
  public abstract List<ValidationProvider<?>> getValidationProviders();
}

/* Location:
 * Qualified Name:     javax.validation.ValidationProviderResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */