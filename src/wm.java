import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.hardware.Camera;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface.TakeSnapButtonAction;
import com.snapchat.android.camera.model.CameraModel.CameraType;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.ui.QuickSnapOnboardingOverlay;
import com.snapchat.android.ui.QuickSnapOnboardingOverlay.OverlayMode;

public final class wm
  extends CameraDecor
{
  private final float b;
  private final QuickSnapOnboardingOverlay c;
  
  public wm(Context paramContext, RelativeLayout paramRelativeLayout, CameraDecor.CameraDecorInterface paramCameraDecorInterface)
  {
    super(paramCameraDecorInterface);
    paramRelativeLayout.removeAllViews();
    b = a(paramContext);
    c = new QuickSnapOnboardingOverlay(paramContext);
    paramRelativeLayout.addView(c);
    c.setHeightThreshold((int)b);
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext);
    int i = paramContext.getInt(SharedPreferenceKey.QUICKSNAP_ONBOARDING_REPEATS.getKey(), 0);
    if (Camera.getNumberOfCameras() <= 1)
    {
      c.setVisibility(8);
      return;
    }
    if (i < 5)
    {
      paramContext = paramContext.edit();
      paramContext.putInt(SharedPreferenceKey.QUICKSNAP_ONBOARDING_REPEATS.getKey(), i + 1);
      paramContext.apply();
      c.setOverlayMode(QuickSnapOnboardingOverlay.OverlayMode.MODE_SOLID);
      return;
    }
    c.setOverlayMode(QuickSnapOnboardingOverlay.OverlayMode.MODE_BLINK);
  }
  
  public static float a(Context paramContext)
  {
    if (paramContext == null) {
      throw new NullPointerException();
    }
    int i = PreferenceManager.getDefaultSharedPreferences(paramContext).getInt(SharedPreferenceKey.KEYBOARD_HEIGHT_PORTRAIT.getKey(), -1);
    if (i == -1) {
      return getResourcesgetDisplayMetricsheightPixels * 0.5F;
    }
    return i - paramContext.getResources().getDimensionPixelSize(2131296281);
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getActionMasked())
    {
    default: 
      return true;
    case 1: 
    case 3: 
      a.a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction.FINGER_UP);
      return true;
    }
    if (paramMotionEvent.getY() > b)
    {
      c.setUpperRegionHighlight(false);
      a.a(CameraModel.CameraType.FRONT_FACING);
      return true;
    }
    c.setUpperRegionHighlight(true);
    a.a(CameraModel.CameraType.BACK_FACING);
    return true;
  }
}

/* Location:
 * Qualified Name:     wm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */