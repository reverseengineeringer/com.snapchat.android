import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.math.BigInteger;

public final class bsp$i
  implements bso
{
  private String a = null;
  
  public bsp$i()
  {
    try
    {
      BigInteger.valueOf(-1L);
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      a = BigInteger.valueOf(localStatFs.getAvailableBlocks()).multiply(BigInteger.valueOf(localStatFs.getBlockSize())).toString();
      return;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      a = null;
    }
  }
  
  public final String a()
  {
    return "disk_space_free";
  }
}

/* Location:
 * Qualified Name:     bsp.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */