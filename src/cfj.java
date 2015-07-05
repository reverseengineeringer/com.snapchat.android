abstract class cfj
  extends cfm
  implements cfe
{
  Class[] a;
  String[] b;
  Class[] c;
  
  cfj(int paramInt, String paramString, Class paramClass, Class[] paramArrayOfClass1, String[] paramArrayOfString, Class[] paramArrayOfClass2)
  {
    super(paramInt, paramString, paramClass);
    a = paramArrayOfClass1;
    b = paramArrayOfString;
    c = paramArrayOfClass2;
  }
  
  public final Class[] a()
  {
    if (a == null) {
      a = c(3);
    }
    return a;
  }
  
  public final Class[] b()
  {
    if (c == null) {
      c = c(5);
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     cfj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */