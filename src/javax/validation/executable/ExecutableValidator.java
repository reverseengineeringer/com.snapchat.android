package javax.validation.executable;

import java.util.Set;
import javax.validation.ConstraintViolation;

public abstract interface ExecutableValidator
{
  public abstract <T> Set<ConstraintViolation<T>> validateConstructorParameters$50d3e6d0();
  
  public abstract <T> Set<ConstraintViolation<T>> validateConstructorReturnValue$62d46b4b();
  
  public abstract <T> Set<ConstraintViolation<T>> validateParameters$5a7dddcf();
  
  public abstract <T> Set<ConstraintViolation<T>> validateReturnValue$2407e934();
}

/* Location:
 * Qualified Name:     javax.validation.executable.ExecutableValidator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */