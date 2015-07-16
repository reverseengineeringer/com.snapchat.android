import java.util.Iterator;
import java.util.List;
import java.util.Random;

public final class aux
{
  private static final Random sRandom = new Random();
  
  public static float a(float paramFloat)
  {
    return Math.min(Math.max(paramFloat, 0.0F), 1.0F);
  }
  
  public static int a(int paramInt)
  {
    int i = 1;
    while (i < paramInt) {
      i <<= 1;
    }
    return i;
  }
  
  public static long a(List<Long> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty()))
    {
      int i = paramList.size();
      int j = i / 2;
      if (i % 2 == 0)
      {
        long l = ((Long)paramList.get(j)).longValue();
        return (((Long)paramList.get(j - 1)).longValue() + l) / 2L;
      }
      return ((Long)paramList.get(j)).longValue();
    }
    return 0L;
  }
  
  public static Random a()
  {
    return sRandom;
  }
  
  public static long b(List<Long> paramList)
  {
    if (paramList.size() == 0) {
      return 0L;
    }
    Iterator localIterator = paramList.iterator();
    for (long l = 0L; localIterator.hasNext(); l = ((Long)localIterator.next()).longValue() + l) {}
    return l / paramList.size();
  }
}

/* Location:
 * Qualified Name:     aux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */