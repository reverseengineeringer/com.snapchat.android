import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.SnapkidzSettingsActivity;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;

final class vs$1
  implements View.OnClickListener
{
  vs$1(vs paramvs) {}
  
  public final void onClick(View paramView)
  {
    paramView = a.a.i();
    paramView.startActivityForResult(new Intent(paramView, SnapkidzSettingsActivity.class), 1000);
  }
}

/* Location:
 * Qualified Name:     vs.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */