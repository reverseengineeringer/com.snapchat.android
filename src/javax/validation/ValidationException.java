package javax.validation;

public class ValidationException
  extends RuntimeException
{
  public ValidationException() {}
  
  public ValidationException(String paramString)
  {
    super(paramString);
  }
  
  public ValidationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public ValidationException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     javax.validation.ValidationException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */