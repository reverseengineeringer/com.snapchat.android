public final class em
  extends Exception
{
  em.a a;
  private String b;
  
  public em(em.a parama, String paramString)
  {
    super(paramString);
    b = paramString;
    a = parama;
  }
  
  public final String toString()
  {
    String str1 = String.valueOf(String.valueOf(a));
    String str2 = String.valueOf(String.valueOf(b));
    return str1.length() + 14 + str2.length() + "Error type: " + str1 + ". " + str2;
  }
  
  public static enum a
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */