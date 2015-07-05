import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.math.BigInteger;

public final class bro$t
  implements brn
{
  private String a = null;
  
  public bro$t()
  {
    try
    {
      BigInteger.valueOf(-1L);
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      a = BigInteger.valueOf(localStatFs.getBlockCount()).multiply(BigInteger.valueOf(localStatFs.getBlockSize())).toString();
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
    return "sd_space_total";
  }
}

/* Location:
 * Qualified Name:     bro.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */