public final class bmx
{
  public static boolean a(String paramString)
  {
    return (paramString.equals("POST")) || (paramString.equals("PATCH")) || (paramString.equals("PUT")) || (paramString.equals("DELETE"));
  }
  
  public static boolean b(String paramString)
  {
    boolean bool = false;
    if ((paramString.equals("POST")) || (paramString.equals("PUT")) || (paramString.equals("PATCH"))) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (paramString.equals("DELETE"))) {
        bool = true;
      }
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     bmx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */