import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.Set;

public final class alc$a
{
  public DownloadPriority a = DownloadPriority.LOW;
  public DownloadPriority b = DownloadPriority.BACKGROUND_LOWEST;
  public boolean c = false;
  public String d;
  public String e;
  public Bundle f;
  public String g = "Unknown";
  public String[] h;
  public Object i;
  public Long j = null;
  private final bgk k;
  private ali l;
  private String m;
  
  public alc$a()
  {
    this(bglmClock);
  }
  
  private alc$a(bgk parambgk)
  {
    k = parambgk;
  }
  
  public final a a(@cgb String paramString1, @cgb String paramString2, int paramInt)
  {
    l = new ali(paramString1, paramString2, System.currentTimeMillis() + paramInt * 86400000L);
    return this;
  }
  
  public final alc a()
  {
    if (TextUtils.isEmpty(d)) {
      throw new IllegalArgumentException("url cannot be null or empty");
    }
    if (a == null) {
      throw new IllegalArgumentException("priority cannot be null");
    }
    if (b == null) {
      throw new IllegalArgumentException("fallback priority cannot be null");
    }
    if ((h == null) || (h.length <= 0)) {
      throw new IllegalArgumentException("context cannot be null or empty");
    }
    if (TextUtils.isEmpty(e)) {
      throw new IllegalArgumentException("key cannot be null or empty");
    }
    if (j == null) {
      j = Long.valueOf(SystemClock.elapsedRealtime());
    }
    if (m == null) {
      m = h[0];
    }
    if (!ala.a.contains(m)) {
      throw new IllegalArgumentException("media type is invalid");
    }
    return new alc(atq.a(d, f), e, a, b, c, j.longValue(), g, m, new ala(h), l, i, (byte)0);
  }
}

/* Location:
 * Qualified Name:     alc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */