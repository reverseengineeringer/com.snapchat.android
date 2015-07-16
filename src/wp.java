import android.hardware.Camera.Parameters;
import android.view.View;
import android.view.animation.AlphaAnimation;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.model.CameraModel;
import com.squareup.otto.Bus;
import java.util.List;
import javax.inject.Inject;

public final class wp
  extends wr
{
  @Inject
  protected CameraModel a;
  private View b;
  
  public wp(View paramView)
  {
    SnapchatApplication.b().c().a(this);
    b = paramView;
  }
  
  @chd
  private Camera.Parameters a(@chd Camera.Parameters paramParameters)
  {
    wy.b localb = a.h;
    Camera.Parameters localParameters;
    if (localb == null) {
      localParameters = null;
    }
    do
    {
      return localParameters;
      localParameters = paramParameters;
    } while (paramParameters != null);
    return localb.c();
  }
  
  public final void a(@chd Camera.Parameters paramParameters, boolean paramBoolean)
  {
    boolean bool2 = false;
    wy.b localb = a.h;
    boolean bool1;
    if (!a.b())
    {
      if (localb != null) {
        break label40;
      }
      bool1 = bool2;
      if ((bool1) && (localb != null)) {
        break label85;
      }
    }
    for (;;)
    {
      return;
      label40:
      Object localObject = localb.c();
      bool1 = bool2;
      if (localObject == null) {
        break;
      }
      localObject = ((Camera.Parameters)localObject).getSupportedFlashModes();
      bool1 = bool2;
      if (localObject == null) {
        break;
      }
      bool1 = ((List)localObject).contains("on");
      break;
      label85:
      localObject = a(paramParameters);
      if (localObject != null)
      {
        if (paramBoolean)
        {
          ((Camera.Parameters)localObject).setFlashMode("on");
          List localList = ((Camera.Parameters)localObject).getSupportedFocusModes();
          if ((localList != null) && (localList.contains("auto"))) {
            ((Camera.Parameters)localObject).setFocusMode("auto");
          }
        }
        while (paramParameters == null)
        {
          localb.a((Camera.Parameters)localObject);
          return;
          ((Camera.Parameters)localObject).setFlashMode("off");
        }
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      bbo.a().a(new bbw(1.0F));
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
      localAlphaAnimation.setDuration(200L);
      localAlphaAnimation.setFillAfter(true);
      b.setVisibility(0);
      b.startAnimation(localAlphaAnimation);
      return;
    }
    bbo.a().a(new bbw(-1.0F));
    b.clearAnimation();
    b.setVisibility(8);
  }
  
  public final void b(boolean paramBoolean)
  {
    wy.b localb = a.h;
    Camera.Parameters localParameters = a(null);
    if ((localParameters == null) || (localb == null)) {
      return;
    }
    if (paramBoolean)
    {
      List localList = localParameters.getSupportedFlashModes();
      if ((localList != null) && (localList.contains("torch"))) {
        localParameters.setFlashMode("torch");
      }
    }
    for (;;)
    {
      localb.a(localParameters);
      return;
      localParameters.setFlashMode("off");
    }
  }
}

/* Location:
 * Qualified Name:     wp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */