public final class avk
{
  private static bp sInstance = null;
  
  public static bp a()
  {
    try
    {
      if (sInstance == null) {
        sInstance = bp.c();
      }
      bp localbp = sInstance;
      return localbp;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     avk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */