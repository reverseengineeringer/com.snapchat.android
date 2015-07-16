import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.SnapkidzSettingsActivity;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;

public final class wo
  extends wj
{
  public wo(Context paramContext, RelativeLayout paramRelativeLayout, CameraDecor.CameraDecorInterface paramCameraDecorInterface)
  {
    super(paramContext, paramRelativeLayout, paramCameraDecorInterface);
    g.setVisibility(8);
    f.setBackgroundResource(2130837541);
    f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = a.i();
        paramAnonymousView.startActivityForResult(new Intent(paramAnonymousView, SnapkidzSettingsActivity.class), 1000);
      }
    });
  }
  
  public final void b() {}
  
  public final void c() {}
  
  protected final void c(boolean paramBoolean) {}
  
  protected final boolean h()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     wo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */