public abstract class buu
  implements Runnable
{
  public Runnable a;
  public byte b = 0;
  
  public final void a()
  {
    if (a != null) {
      a.run();
    }
    b = 2;
  }
}

/* Location:
 * Qualified Name:     buu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */