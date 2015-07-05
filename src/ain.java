import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import java.util.Locale;

public final class ain
  extends aje
{
  public String mActionText;
  public String mActionUrl;
  private boolean mHideTimer;
  public String mMediaUrl;
  
  ain() {}
  
  public ain(String paramString1, long paramLong1, long paramLong2, int paramInt, boolean paramBoolean1, Snap.ClientSnapStatus paramClientSnapStatus, String paramString2, double paramDouble1, String paramString3, long paramLong3, double paramDouble2, String paramString4, String paramString5, String paramString6, boolean paramBoolean2, String paramString7)
  {
    super(paramString1, paramLong1, paramLong2, paramLong1, paramInt, paramBoolean1, paramClientSnapStatus, paramString2, paramDouble1, paramString3, false, paramLong3, paramDouble2, paramString7);
    SnapchatApplication.b().c().a(this);
    mMediaUrl = paramString4;
    mActionText = paramString5;
    mActionUrl = paramString6;
    mHideTimer = paramBoolean2;
  }
  
  public final void A_()
  {
    o();
  }
  
  protected final int a(int paramInt)
  {
    return paramInt;
  }
  
  public final String a()
  {
    if ((z()) && (!TextUtils.isEmpty(mActionText))) {
      return mActionText;
    }
    return super.a();
  }
  
  public final String b()
  {
    if ((z()) && (!TextUtils.isEmpty(mActionText))) {
      return mActionText.toUpperCase(Locale.getDefault());
    }
    return super.b();
  }
  
  public final boolean c()
  {
    if ((z()) && (!TextUtils.isEmpty(mActionText))) {
      return true;
    }
    return super.c();
  }
  
  public final boolean e()
  {
    return mHideTimer;
  }
  
  public final boolean f()
  {
    return (super.f()) || ((z()) && (!TextUtils.isEmpty(mActionText)));
  }
}

/* Location:
 * Qualified Name:     ain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */