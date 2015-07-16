public abstract class aou
{
  protected aos b;
  
  public final void a(String paramString)
  {
    if (b != null) {
      if (b.c != -1L) {
        break label44;
      }
    }
    label44:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        b.c = System.currentTimeMillis();
      }
      a(paramString, null);
      return;
    }
  }
  
  public abstract void a(String paramString1, String paramString2);
  
  public final void b()
  {
    if (b != null) {
      b.c = System.currentTimeMillis();
    }
  }
}

/* Location:
 * Qualified Name:     aou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */