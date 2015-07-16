import android.os.Debug;
import android.os.Debug.MemoryInfo;

public final class bsp$n
  implements bso
{
  private Integer a = null;
  
  public bsp$n()
  {
    Debug.MemoryInfo localMemoryInfo = new Debug.MemoryInfo();
    Debug.getMemoryInfo(localMemoryInfo);
    int i = dalvikPss;
    int j = nativePss;
    a = Integer.valueOf((otherPss + (i + j)) * 1024);
  }
  
  public final String a()
  {
    return "memory_usage";
  }
}

/* Location:
 * Qualified Name:     bsp.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */