import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import java.util.Locale;

public final class ajj
  extends aka
{
  public String mActionText;
  public String mActionUrl;
  private boolean mHideTimer;
  public String mMediaUrl;
  
  ajj() {}
  
  public ajj(String paramString1, long paramLong1, long paramLong2, int paramInt, boolean paramBoolean1, Snap.ClientSnapStatus paramClientSnapStatus, String paramString2, double paramDouble, String paramString3, String paramString4, String paramString5, String paramString6, boolean paramBoolean2, String paramString7)
  {
    super(paramString1, paramLong1, paramLong2, paramLong1, paramInt, paramBoolean1, paramClientSnapStatus, paramString2, paramDouble, paramString3, false, paramString7);
    SnapchatApplication.b().c().a(this);
    mMediaUrl = paramString4;
    mActionText = paramString5;
    mActionUrl = paramString6;
    mHideTimer = paramBoolean2;
  }
  
  protected final int a(int paramInt)
  {
    return paramInt;
  }
  
  public final String a()
  {
    if ((A()) && (!TextUtils.isEmpty(mActionText))) {
      return mActionText;
    }
    return super.a();
  }
  
  public final String b()
  {
    if ((A()) && (!TextUtils.isEmpty(mActionText))) {
      return mActionText.toUpperCase(Locale.getDefault());
    }
    return super.b();
  }
  
  public final boolean c()
  {
    if ((A()) && (!TextUtils.isEmpty(mActionText))) {
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
    return (super.f()) || ((A()) && (!TextUtils.isEmpty(mActionText)));
  }
  
  public final void z_()
  {
    o();
  }
}

/* Location:
 * Qualified Name:     ajj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */