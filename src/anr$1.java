import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.scan.SnapScan;
import com.snapchat.android.scan.SnapScan.ImageFormat;
import com.snapchat.android.scan.SnapScanResult;

public final class anr$1
  extends AsyncTask<Void, Void, SnapScanResult>
{
  public anr$1(anr paramanr, byte[] paramArrayOfByte) {}
  
  private SnapScanResult a()
  {
    try
    {
      anr.c(b);
      SnapScanResult localSnapScanResult = SnapScan.a(SnapScan.ImageFormat.NV21, anr.a(b), anr.b(b), a);
      anr.d(b);
      return localSnapScanResult;
    }
    catch (Exception localException)
    {
      Timber.f(anr.b(), localException.getMessage(), new Object[0]);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     anr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */