import android.content.Context;
import android.content.res.Resources;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.AlertDialogUtils;

public final class bgc
{
  private static final bgc sInstance = new bgc();
  public final Context mContext;
  
  private bgc()
  {
    this(SnapchatApplication.b().getApplicationContext());
  }
  
  private bgc(@cgb Context paramContext)
  {
    mContext = paramContext;
  }
  
  public static bgc a()
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
 * Qualified Name:     bgc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */