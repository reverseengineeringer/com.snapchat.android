import android.os.Bundle;
import com.snapchat.android.networkmanager.DownloadPriority;

public final class alt
  extends alu
{
  private volatile byte[] f;
  
  public alt()
  {
    this(alb.a());
  }
  
  private alt(alb paramalb)
  {
    super(paramalb);
  }
  
  protected final boolean a(bfl parambfl)
  {
    boolean bool = false;
    if (parambfl != null)
    {
      f = new byte[mSize];
      System.arraycopy(mBuffer, 0, f, 0, mSize);
      bool = true;
    }
    return bool;
  }
  
  public final byte[] a(String paramString1, Bundle paramBundle, DownloadPriority paramDownloadPriority1, DownloadPriority paramDownloadPriority2, String paramString2, String paramString3)
  {
    if (b(paramString1, paramBundle, paramDownloadPriority1, paramDownloadPriority2, paramString2, paramString3)) {
      return f;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     alt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */