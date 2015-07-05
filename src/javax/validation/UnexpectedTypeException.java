package javax.validation;

public final class UnexpectedTypeException
  extends ConstraintDeclarationException
{
  public UnexpectedTypeException() {}
  
  private UnexpectedTypeException(String paramString)
  {
    super(paramString);
  }
  
  private UnexpectedTypeException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  private UnexpectedTypeException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     javax.validation.UnexpectedTypeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */