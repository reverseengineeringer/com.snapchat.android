final class cif$c
  extends IllegalArgumentException
{
  private final boolean b;
  
  cif$c(cif paramcif, String paramString, boolean paramBoolean)
  {
    super(paramString);
    b = paramBoolean;
  }
  
  public final String getMessage()
  {
    StringBuffer localStringBuffer = new StringBuffer(85);
    localStringBuffer.append("The");
    Object localObject = super.getMessage();
    if (localObject != null)
    {
      localStringBuffer.append(' ');
      localStringBuffer.append((String)localObject);
    }
    localStringBuffer.append(" instant is ");
    localObject = ckc.a.b().a(a.a);
    if (b)
    {
      localStringBuffer.append("below the supported minimum of ");
      ((cjw)localObject).a(localStringBuffer, a.E.a, null);
    }
    for (;;)
    {
      localStringBuffer.append(" (");
      localStringBuffer.append(a.a);
      localStringBuffer.append(')');
      return localStringBuffer.toString();
      localStringBuffer.append("above the supported maximum of ");
      ((cjw)localObject).a(localStringBuffer, a.F.a, null);
    }
  }
  
  public final String toString()
  {
    return "IllegalArgumentException: " + getMessage();
  }
}

/* Location:
 * Qualified Name:     cif.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */