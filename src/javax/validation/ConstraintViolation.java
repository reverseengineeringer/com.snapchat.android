package javax.validation;

import javax.validation.metadata.ConstraintDescriptor;

public abstract interface ConstraintViolation<T>
{
  public abstract ConstraintDescriptor<?> getConstraintDescriptor();
  
  public abstract Object[] getExecutableParameters();
  
  public abstract Object getExecutableReturnValue();
  
  public abstract Object getInvalidValue();
  
  public abstract Object getLeafBean();
  
  public abstract String getMessage();
  
  public abstract String getMessageTemplate();
  
  public abstract Path getPropertyPath();
  
  public abstract T getRootBean();
  
  public abstract Class<T> getRootBeanClass();
  
  public abstract <U> U unwrap$659effca();
}

/* Location:
 * Qualified Name:     javax.validation.ConstraintViolation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */