import android.content.Context;
import android.hardware.Camera.CameraInfo;
import android.view.TextureView;
import android.view.View;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.ui.here.LocalPreview;
import com.snapchat.android.ui.here.LocalPreview.b;

public final class are
{
  @chd
  private LocalPreview a;
  
  public final View a(Context paramContext)
  {
    for (;;)
    {
      try
      {
        a = new LocalPreview(paramContext);
        if (a == null)
        {
          paramContext = new TextureView(paramContext);
          return paramContext;
        }
      }
      catch (LocalPreview.b localb)
      {
        new ErrorMetric(localb.getMessage()).a(localb).e();
        continue;
      }
      finally {}
      paramContext = a.b;
    }
  }
  
  public final void a()
  {
    try
    {
      if (a != null) {
        LocalPreview.g();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, Camera.CameraInfo paramCameraInfo)
  {
    for (;;)
    {
      try
      {
        if (a != null)
        {
          boolean bool = LocalPreview.c();
          if (!bool) {}
        }
        else
        {
          return;
        }
        LocalPreview.a(paramInt1, paramInt2, paramInt3, paramInt4);
        if (facing != 1) {
          continue;
        }
        switch (orientation)
        {
        case 0: 
          throw new RuntimeException("Illegal camera orientation: " + orientation);
        }
      }
      finally {}
      LocalPreview.f();
      continue;
      LocalPreview.e();
      LocalPreview.f();
      continue;
      LocalPreview.e();
    }
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    try
    {
      if (a != null) {
        a.a(paramArrayOfByte);
      }
      return;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
  
  public final void b()
  {
    try
    {
      if (a != null) {
        LocalPreview.d();
      }
      return;
    }
    catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
    {
      for (;;)
      {
        LocalPreview.b();
        a = null;
        new ErrorMetric("resetPreviewSize() UnsatisfiedLinkError").a(localUnsatisfiedLinkError).e();
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     are
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */