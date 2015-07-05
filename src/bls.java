import java.util.ArrayDeque;
import java.util.Deque;

public final class bls
{
  private int a = 64;
  private int b = 5;
  private final Deque<Object> c = new ArrayDeque();
  private final Deque<Object> d = new ArrayDeque();
  private final Deque<blk> e = new ArrayDeque();
  
  final void a(blk paramblk)
  {
    try
    {
      e.add(paramblk);
      return;
    }
    finally
    {
      paramblk = finally;
      throw paramblk;
    }
  }
  
  final void b(blk paramblk)
  {
    try
    {
      if (!e.remove(paramblk)) {
        throw new AssertionError("Call wasn't in-flight!");
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     bls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */