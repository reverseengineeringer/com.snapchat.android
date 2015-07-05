import java.io.InterruptedIOException;

final class bnx$c
  extends bzs
{
  bnx$c(bnx parambnx) {}
  
  protected final void a()
  {
    a.b(bni.l);
  }
  
  public final void b()
  {
    if (d()) {
      throw new InterruptedIOException("timeout");
    }
  }
}

/* Location:
 * Qualified Name:     bnx.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */