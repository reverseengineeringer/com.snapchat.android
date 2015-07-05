package javax.validation;

public abstract interface ValidatorFactory
{
  public abstract void close();
  
  public abstract ConstraintValidatorFactory getConstraintValidatorFactory();
  
  public abstract MessageInterpolator getMessageInterpolator();
  
  public abstract ParameterNameProvider getParameterNameProvider();
  
  public abstract TraversableResolver getTraversableResolver();
  
  public abstract Validator getValidator();
  
  public abstract <T> T unwrap$659effca();
  
  public abstract ValidatorContext usingContext();
}

/* Location:
 * Qualified Name:     javax.validation.ValidatorFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */