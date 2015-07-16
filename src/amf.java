import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public final class amf
{
  public final Object a = new Object();
  public final Queue<amf.a> b = new LinkedList();
  public final int c = 5;
  
  public amf()
  {
    this((byte)0);
  }
  
  private amf(byte paramByte) {}
  
  public final long a()
  {
    synchronized (a)
    {
      if (b.size() == 0) {
        return 0L;
      }
      Iterator localIterator = b.iterator();
      for (long l = 0L; localIterator.hasNext(); l = nexta + l) {}
      l /= b.size();
      return l;
    }
  }
  
  public static final class a
  {
    public final long a;
    
    public a(long paramLong)
    {
      a = paramLong;
    }
  }
}

/* Location:
 * Qualified Name:     amf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */