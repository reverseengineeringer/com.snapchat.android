package javax.validation;

public final class ElementKind
  extends Enum<ElementKind>
{
  static
  {
    METHOD$3be69c4 = 3;
    CONSTRUCTOR$3be69c4 = 4;
    PARAMETER$3be69c4 = 5;
    CROSS_PARAMETER$3be69c4 = 6;
    RETURN_VALUE$3be69c4 = 7;
  }
  
  private ElementKind()
  {
    super(str, i);
  }
  
  private static int[] values$1b8f9fca()
  {
    return (int[])$VALUES$6b00c557.clone();
  }
}

/* Location:
 * Qualified Name:     javax.validation.ElementKind
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */