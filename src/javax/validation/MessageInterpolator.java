package javax.validation;

import javax.validation.metadata.ConstraintDescriptor;

public abstract interface MessageInterpolator
{
  public abstract String interpolate$13aa1267();
  
  public abstract String interpolate$51ff7c6e();
  
  public static abstract interface Context
  {
    public abstract ConstraintDescriptor<?> getConstraintDescriptor();
    
    public abstract Object getValidatedValue();
    
    public abstract <T> T unwrap$659effca();
  }
}

/* Location:
 * Qualified Name:     javax.validation.MessageInterpolator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */