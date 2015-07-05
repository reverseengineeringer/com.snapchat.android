public final class abs
  extends RuntimeException
{
  public final IllegalArgumentException a;
  public final String b;
  
  public abs(String paramString1, String paramString2)
  {
    a = new IllegalArgumentException(paramString1);
    b = paramString2;
  }
}

/* Location:
 * Qualified Name:     abs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */