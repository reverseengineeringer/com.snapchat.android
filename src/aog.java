import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.analytics.ProfileEventAnalytics;
import com.snapchat.android.camera.ui.viewflipper.CameraViewFlipper;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.ui.VerticalSwipeLayout.a;
import com.snapchat.android.util.TitleBarManager.Visibility;
import com.squareup.otto.Bus;
import javax.inject.Provider;

public final class aog
  implements VerticalSwipeLayout.a
{
  private final CameraViewFlipper a;
  private final Bus b;
  private final ProfileEventAnalytics c;
  
  public aog(CameraViewFlipper paramCameraViewFlipper)
  {
    this(paramCameraViewFlipper, bbo.a());
  }
  
  private aog(CameraViewFlipper paramCameraViewFlipper, Bus paramBus)
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
      do
      {
        return;
        b.a(new bfk(TitleBarManager.Visibility.HIDDEN));
      } while (!a.b);
      if ((paramInt2 == 1) && (paramInt3 != 1))
      {
        b.a(new beg(false));
        if (paramInt3 == 0) {
          ProfileEventAnalytics.a(AnalyticsEvents.AnalyticsContext.PROFILE_MAIN_PAGE, false);
        }
      }
    } while ((paramInt2 != 0) || (paramInt3 == 0));
    Object localObject = akp.UNSAFE_USER_PROVIDER;
    if (localObject != null)
    {
      localObject = (akp)((Provider)localObject).get();
      if (localObject == null) {
        paramInt1 = 0;
      }
    }
    for (;;)
    {
      localObject = kf.SWIPE_UP;
      AnalyticsEvents.AnalyticsContext localAnalyticsContext = AnalyticsEvents.AnalyticsContext.CAMERA_PAGE;
      akr.a();
      ProfileEventAnalytics.a((kf)localObject, localAnalyticsContext, paramInt1, akr.C());
      return;
      paramInt1 = ((akp)localObject).h();
      continue;
      paramInt1 = 0;
    }
  }
  
  public final void c(int paramInt)
  {
    if (!a.isEnabled()) {}
    int i;
    label64:
    label97:
    label106:
    do
    {
      do
      {
        return;
        a.getContext();
        if (paramInt == 0)
        {
          if (!akr.aP()) {
            akr.aQ();
          }
          localObject = akp.g();
          if ((localObject == null) || (((akp)localObject).h() <= 0)) {
            break;
          }
          i = 1;
          if ((i == 0) || (akr.aT())) {
            break label164;
          }
          i = 1;
          if (i != 0) {
            akr.aU();
          }
        }
      } while (!a.isEnabled());
      if ((paramInt != 0) || (a.getInProfilePictureView())) {
        break label169;
      }
      i = 1;
      if (i == 0) {
        break label174;
      }
      localObject = TitleBarManager.Visibility.VISIBLE;
      b.a(new bfk((TitleBarManager.Visibility)localObject));
    } while (!a.b);
    Object localObject = b;
    if (paramInt == 1) {}
    for (boolean bool = true;; bool = false)
    {
      ((Bus)localObject).a(new beg(bool));
      return;
      i = 0;
      break;
      label164:
      i = 0;
      break label64;
      label169:
      i = 0;
      break label97;
      label174:
      localObject = TitleBarManager.Visibility.HIDDEN;
      break label106;
    }
  }
}

/* Location:
 * Qualified Name:     aog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */