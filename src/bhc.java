import android.content.Context;
import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.AlertDialogUtils;

public final class bhc
{
  private static final bhc sInstance = new bhc();
  public final Context mContext;
  
  private bhc()
  {
    this(SnapchatApplication.b().getApplicationContext());
  }
  
  private bhc(@chc Context paramContext)
  {
    mContext = paramContext;
  }
  
  public static bhc a()
  {
    return sInstance;
  }
  
  public final void b()
  {
    AlertDialogUtils.a(mContext.getResources().getString(2131493327), mContext, 1);
  }
  
  public final void c()
  {
    AlertDialogUtils.a();
    AlertDialogUtils.a(mContext.getResources().getString(2131493326), mContext);
  }
  
  public final void d()
  {
    AlertDialogUtils.a();
    AlertDialogUtils.a(mContext.getResources().getString(2131493325), mContext);
  }
}

/* Location:
 * Qualified Name:     bhc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */