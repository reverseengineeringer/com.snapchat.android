import java.lang.ref.SoftReference;

final class cgp$b
  implements cgp.a
{
  private SoftReference a;
  
  public cgp$b()
  {
    b();
  }
  
  private String[] a()
  {
    return (String[])a.get();
  }
  
  private String[] b()
  {
    String[] arrayOfString = new String[3];
    a = new SoftReference(arrayOfString);
    return arrayOfString;
  }
  
  public final String a(int paramInt)
  {
    String[] arrayOfString = a();
    if (arrayOfString == null) {
      return null;
    }
    return arrayOfString[paramInt];
  }
  
  public final void a(int paramInt, String paramString)
  {
    String[] arrayOfString2 = a();
    String[] arrayOfString1 = arrayOfString2;
    if (arrayOfString2 == null) {
      arrayOfString1 = b();
    }
    arrayOfString1[paramInt] = paramString;
  }
}

/* Location:
 * Qualified Name:     cgp.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */