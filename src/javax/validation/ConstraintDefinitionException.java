package javax.validation;

public final class ConstraintDefinitionException
  extends ValidationException
{
  public ConstraintDefinitionException() {}
  
  private ConstraintDefinitionException(String paramString)
  {
    super(paramString);
  }
  
  private ConstraintDefinitionException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  private ConstraintDefinitionException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     javax.validation.ConstraintDefinitionException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */