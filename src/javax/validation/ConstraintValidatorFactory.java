package javax.validation;

public abstract interface ConstraintValidatorFactory
{
  public abstract <T extends ConstraintValidator<?, ?>> T getInstance$16d89fc5();
  
  public abstract void releaseInstance$27f77bb4();
}

/* Location:
 * Qualified Name:     javax.validation.ConstraintValidatorFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */