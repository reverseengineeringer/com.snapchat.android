package javax.validation.spi;

import javax.validation.Configuration;
import javax.validation.ValidatorFactory;

public abstract interface ValidationProvider<T extends Configuration<T>>
{
  public abstract ValidatorFactory buildValidatorFactory$1f14e60d();
  
  public abstract Configuration<?> createGenericConfiguration$6e4efa3();
  
  public abstract T createSpecializedConfiguration$6e4efa3();
}

/* Location:
 * Qualified Name:     javax.validation.spi.ValidationProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */