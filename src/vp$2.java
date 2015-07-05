import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;

final class vp$2
  implements View.OnClickListener
{
  vp$2(vp paramvp) {}
  
  public final void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.PICK");
    paramView.setType("image/*");
    FragmentActivity localFragmentActivity = a.a.i();
    if (paramView.resolveActivity(localFragmentActivity.getPackageManager()) != null) {
      localFragmentActivity.startActivityForResult(paramView, 1001);
    }
  }
}

/* Location:
 * Qualified Name:     vp.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */