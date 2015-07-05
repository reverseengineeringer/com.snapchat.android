package javax.validation;

import java.util.HashSet;
import java.util.Set;

public final class ConstraintViolationException
  extends ValidationException
{
  private final Set<ConstraintViolation<?>> constraintViolations;
  
  private ConstraintViolationException(Set<? extends ConstraintViolation<?>> paramSet)
  {
    super(null);
    if (paramSet == null)
    {
      constraintViolations = null;
      return;
    }
    constraintViolations = new HashSet(paramSet);
  }
  
  private ConstraintViolationException(Set<? extends ConstraintViolation<?>> paramSet, byte paramByte)
  {
    this(paramSet);
  }
  
  private Set<ConstraintViolation<?>> getConstraintViolations()
  {
    return constraintViolations;
  }
}

/* Location:
 * Qualified Name:     javax.validation.ConstraintViolationException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */