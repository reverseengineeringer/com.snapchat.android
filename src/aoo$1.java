import android.os.AsyncTask;
import com.snapchat.android.scan.SnapScan;
import com.snapchat.android.scan.SnapScan.ImageFormat;
import com.snapchat.android.scan.SnapScanResult;

public final class aoo$1
  extends AsyncTask<Void, Void, SnapScanResult>
{
  public aoo$1(aoo paramaoo, byte[] paramArrayOfByte) {}
  
  private SnapScanResult a()
  {
    try
    {
      aoo.c(b);
      SnapScanResult localSnapScanResult = SnapScan.a(SnapScan.ImageFormat.NV21, aoo.a(b), aoo.b(b), a);
      aoo.d(b);
      return localSnapScanResult;
    }
    catch (Exception localException)
    {
      aoo.b();
      localException.getMessage();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     aoo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */