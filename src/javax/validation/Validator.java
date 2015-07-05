package javax.validation;

import java.util.Set;
import javax.validation.executable.ExecutableValidator;
import javax.validation.metadata.BeanDescriptor;

public abstract interface Validator
{
  public abstract ExecutableValidator forExecutables();
  
  public abstract BeanDescriptor getConstraintsForClass$2044451b();
  
  public abstract <T> T unwrap$659effca();
  
  public abstract <T> Set<ConstraintViolation<T>> validate$622610b8();
  
  public abstract <T> Set<ConstraintViolation<T>> validateProperty$13cf112e();
  
  public abstract <T> Set<ConstraintViolation<T>> validateValue$66b5613b();
}

/* Location:
 * Qualified Name:     javax.validation.Validator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */