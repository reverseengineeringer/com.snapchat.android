import java.util.ArrayDeque;
import java.util.Deque;

public final class bmt
{
  private int a = 64;
  private int b = 5;
  private final Deque<Object> c = new ArrayDeque();
  private final Deque<Object> d = new ArrayDeque();
  private final Deque<bml> e = new ArrayDeque();
  
  final void a(bml parambml)
  {
    try
    {
      e.add(parambml);
      return;
    }
    finally
    {
      parambml = finally;
      throw parambml;
    }
  }
  
  final void b(bml parambml)
  {
    try
    {
      if (!e.remove(parambml)) {
        throw new AssertionError("Call wasn't in-flight!");
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     bmt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */