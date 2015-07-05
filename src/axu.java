import android.os.SystemClock;
import com.snapchat.android.SnapchatApplication;
import javax.inject.Inject;

public class axu
{
  @Inject
  protected bgk mClock;
  public String mIv;
  public String mKey;
  public String mThumbnailIv;
  public long mTimestamp;
  
  public axu(@cgb String paramString1, @cgb String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public axu(@cgb String paramString1, @cgb String paramString2, @cgc String paramString3)
  {
    SnapchatApplication.b().c().a(this);
    mKey = paramString1;
    mIv = paramString2;
    mThumbnailIv = paramString3;
    mTimestamp = SystemClock.elapsedRealtime();
  }
  
  public axu(@cgb String paramString1, @cgb String paramString2, @cgc String paramString3, long paramLong)
  {
    SnapchatApplication.b().c().a(this);
    mKey = paramString1;
    mIv = paramString2;
    mThumbnailIv = paramString3;
    mTimestamp = paramLong;
  }
}

/* Location:
 * Qualified Name:     axu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */