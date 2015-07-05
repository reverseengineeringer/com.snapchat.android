package javax.validation;

public abstract interface Configuration<T extends Configuration<T>>
{
  public abstract T addMapping$76789b8e();
  
  public abstract T addProperty$4bfc3d9d();
  
  public abstract ValidatorFactory buildValidatorFactory();
  
  public abstract T constraintValidatorFactory$5c1d114e();
  
  public abstract BootstrapConfiguration getBootstrapConfiguration();
  
  public abstract ConstraintValidatorFactory getDefaultConstraintValidatorFactory();
  
  public abstract MessageInterpolator getDefaultMessageInterpolator();
  
  public abstract ParameterNameProvider getDefaultParameterNameProvider();
  
  public abstract TraversableResolver getDefaultTraversableResolver();
  
  public abstract T ignoreXmlConfiguration();
  
  public abstract T messageInterpolator$3ead4207();
  
  public abstract T parameterNameProvider$5e4f6410();
  
  public abstract T traversableResolver$7ab50962();
}

/* Location:
 * Qualified Name:     javax.validation.Configuration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */