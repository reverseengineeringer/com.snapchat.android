import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.camera.ui.viewflipper.CameraViewFlipper;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.ui.VerticalSwipeLayout.a;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;

public final class anj
  implements VerticalSwipeLayout.a
{
  private final CameraViewFlipper a;
  private final Bus b;
  private final ProfileEventAnalytics c;
  
  public anj(CameraViewFlipper paramCameraViewFlipper)
  {
    this(paramCameraViewFlipper, ban.a());
  }
  
  private anj(CameraViewFlipper paramCameraViewFlipper, Bus paramBus)
  {
    a = paramCameraViewFlipper;
    b = paramBus;
    c = ProfileEventAnalytics.a();
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((!a.isEnabled()) || ((paramInt2 == paramInt3) && (paramInt1 == 2))) {}
    do
    {
      return;
      b.a(new bel(TitleBarManager.Visibility.HIDDEN));
    } while ((!a.b) || (paramInt2 != 1) || (paramInt3 == 1));
    b.a(new bdg(false));
  }
  
  public final void c(int paramInt)
  {
    if (!a.isEnabled()) {}
    int i;
    label71:
    label104:
    label113:
    do
    {
      do
      {
        return;
        a.getContext();
        if (paramInt == 0)
        {
          ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_MAIN_PAGE, false);
          if (!ajx.aS()) {
            ajx.aT();
          }
          localObject = ajv.g();
          if ((localObject == null) || (((ajv)localObject).h() <= 0)) {
            break;
          }
          i = 1;
          if ((i == 0) || (ajx.aW())) {
            break label171;
          }
          i = 1;
          if (i != 0) {
            ajx.aX();
          }
        }
      } while (!a.isEnabled());
      if ((paramInt != 0) || (a.getInProfilePictureView())) {
        break label176;
      }
      i = 1;
      if (i == 0) {
        break label181;
      }
      localObject = TitleBarManager.Visibility.VISIBLE;
      b.a(new bel((TitleBarManager.Visibility)localObject));
    } while (!a.b);
    Object localObject = b;
    if (paramInt == 1) {}
    for (boolean bool = true;; bool = false)
    {
      ((Bus)localObject).a(new bdg(bool));
      return;
      i = 0;
      break;
      label171:
      i = 0;
      break label71;
      label176:
      i = 0;
      break label104;
      label181:
      localObject = TitleBarManager.Visibility.HIDDEN;
      break label113;
    }
  }
}

/* Location:
 * Qualified Name:     anj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */