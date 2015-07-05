package javax.validation;

import java.util.List;
import javax.validation.spi.ValidationProvider;

class Validation$DefaultValidationProviderResolver
  implements ValidationProviderResolver
{
  public final List<ValidationProvider<?>> getValidationProviders()
  {
    return Validation.GetValidationProviderListAction.getValidationProviderList();
  }
}

/* Location:
 * Qualified Name:     javax.validation.Validation.DefaultValidationProviderResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */