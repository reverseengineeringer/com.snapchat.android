import android.os.Bundle;
import com.snapchat.android.networkmanager.DownloadPriority;

public final class amq
  extends amr
{
  private volatile byte[] f;
  
  public amq()
  {
    this(alw.a());
  }
  
  private amq(alw paramalw)
  {
    super(paramalw);
  }
  
  protected final boolean a(bgl parambgl)
  {
    boolean bool = false;
    if (parambgl != null)
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
 * Qualified Name:     amq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */