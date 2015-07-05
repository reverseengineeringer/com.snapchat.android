package javax.validation;

import javax.validation.metadata.ConstraintDescriptor;

public abstract interface MessageInterpolator$Context
{
  public abstract ConstraintDescriptor<?> getConstraintDescriptor();
  
  public abstract Object getValidatedValue();
  
  public abstract <T> T unwrap$659effca();
}

/* Location:
 * Qualified Name:     javax.validation.MessageInterpolator.Context
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */