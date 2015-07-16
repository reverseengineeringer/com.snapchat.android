import android.hardware.Camera.Parameters;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.videocamera.VideoCameraHandler;
import com.snapchat.android.camera.videocamera.VideoCameraHandler.VideoFailureType;
import com.snapchat.android.camera.videocamera.VideoCameraHandler.c;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.io.File;
import java.util.List;
import javax.inject.Inject;

@awj
public final class wv
{
  @Inject
  protected xg a;
  @Inject
  protected CameraModel b;
  @Inject
  protected xf c;
  @Inject
  protected xj d;
  private final aya e;
  private final ob f;
  
  @Inject
  protected wv()
  {
    this(aya.a(), new ob());
  }
  
  private wv(aya paramaya, ob paramob)
  {
    SnapchatApplication.b().c().a(this);
    e = paramaya;
    f = paramob;
  }
  
  public final void a()
  {
    if (b.h == null)
    {
      if (ReleaseManager.e()) {
        bbo.a().a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, "Null camera when initializing VideoCameraHandler"));
      }
      return;
    }
    b();
    HandlerThread localHandlerThread = new HandlerThread("Video Recording Handler Thread");
    localHandlerThread.start();
    a.b = new VideoCameraHandler(localHandlerThread.getLooper());
  }
  
  public final void a(@chd VideoCameraHandler.c paramc, @chc wr paramwr, boolean paramBoolean)
  {
    VideoCameraHandler localVideoCameraHandler = a.b;
    if (localVideoCameraHandler != null)
    {
      localVideoCameraHandler.obtainMessage(100, paramc).sendToTarget();
      if (paramBoolean) {
        localVideoCameraHandler.waitDone();
      }
    }
    if (b.b()) {
      paramwr.a(false);
    }
  }
  
  public final boolean a(VideoCameraHandler.c paramc, wr paramwr, @chc avc paramavc, @chd Surface paramSurface)
  {
    File localFile = e.b();
    wy.b localb = b.h;
    VideoCameraHandler localVideoCameraHandler = a.b;
    if ((localb == null) || (localVideoCameraHandler == null) || (localFile == null))
    {
      if (localFile == null) {
        paramc.a(VideoCameraHandler.VideoFailureType.VIDEO_STORAGE_EXCEPTION);
      }
      for (;;)
      {
        return false;
        paramc.a(VideoCameraHandler.VideoFailureType.INITIALIZATION_ERROR);
      }
    }
    a.a = true;
    Camera.Parameters localParameters = localb.c();
    if (localParameters != null)
    {
      if (!b.b())
      {
        List localList = localParameters.getSupportedFocusModes();
        if ((localList != null) && (localList.contains("continuous-video"))) {
          localParameters.setFocusMode("continuous-video");
        }
      }
      if ((akn.a().a("USE_VIDEO_STABILIZATION", "option", "on").equals("on")) && (att.SUPPORTS_VIDEO_STABILIZATION) && (localParameters.isVideoStabilizationSupported())) {
        localParameters.setVideoStabilization(true);
      }
      localb.a(localParameters);
    }
    if (c.a)
    {
      if (b.b()) {
        paramwr.a(true);
      }
    }
    else {
      localb.a(null);
    }
    for (;;)
    {
      double d1;
      double d2;
      try
      {
        localb.d();
        if (paramSurface != null) {
          c = paramSurface;
        }
        localVideoCameraHandler.a(paramc, paramavc, localFile);
        paramwr = f;
        if (att.HAS_SURFACE_TEXTURE_RECORDING)
        {
          d1 = paramavc.c() - mScreenParameterProvider.mResolution.c();
          paramc = mScreenParameterProvider.mResolution;
          paramc = paramc.a(paramavc.a() / paramc.a());
          d2 = 100.0D * (Math.abs(paramc.d() - paramavc.d()) / Math.max(paramc.d(), paramavc.d()));
          if (d1 <= 0.0D) {
            break label377;
          }
          paramc = new op(d2);
          if (paramc != null) {
            mExceptionReporter.a(paramc);
          }
        }
        return true;
      }
      catch (RuntimeException paramwr)
      {
        paramc.a(VideoCameraHandler.VideoFailureType.CAMERA_UNLOCK_EXCEPTION);
        return false;
      }
      paramwr.b(true);
      break;
      label377:
      if (d1 < 0.0D) {
        paramc = new oo(d2);
      } else {
        paramc = null;
      }
    }
  }
  
  public final void b()
  {
    VideoCameraHandler localVideoCameraHandler = a.b;
    if (localVideoCameraHandler != null) {
      localVideoCameraHandler.a();
    }
    a.b = null;
  }
}

/* Location:
 * Qualified Name:     wv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */