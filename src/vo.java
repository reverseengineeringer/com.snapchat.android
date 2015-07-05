import android.content.Context;
import android.content.res.Resources;
import android.widget.RelativeLayout;
import com.snapchat.android.camera.cameradecor.CameraDecor;

public final class vo
  extends CameraDecor
{
  public RelativeLayout b;
  
  public vo(Context paramContext, RelativeLayout paramRelativeLayout)
  {
    super(null);
    if (paramRelativeLayout == null) {
      throw new NullPointerException("decor container can not be null");
    }
    b = paramRelativeLayout;
    b.setBackgroundColor(paramContext.getResources().getColor(2131230760));
  }
}

/* Location:
 * Qualified Name:     vo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */