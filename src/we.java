import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.os.HandlerThread;
import android.os.Message;
import com.snapchat.android.Timber;
import com.snapchat.android.camera.hardware.CameraOperationHandler;
import com.snapchat.android.camera.hardware.CameraOperationHandler.CameraOperationType;
import com.snapchat.android.camera.hardware.CameraOperationHandler.a;
import com.snapchat.android.database.SharedPreferenceKey;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class we
  implements wc, wc.b
{
  final ws a;
  @cgc
  Camera b;
  Camera.Parameters c;
  boolean d;
  private final CameraOperationHandler e;
  
  public we()
  {
    HandlerThread localHandlerThread = new HandlerThread("Camera Handler Thread");
    localHandlerThread.start();
    e = new CameraOperationHandler(localHandlerThread.getLooper());
    a = ws.a();
  }
  
  public final void a()
  {
    a(true);
  }
  
  public final void a(final int paramInt)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.SET_ORIENTATION.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.setDisplayOrientation(paramInt);
      }
    }).sendToTarget();
  }
  
  public final void a(final int paramInt, final wh paramwh)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.OPEN.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b != null) {
          return;
        }
        we localwe = we.this;
        int i = paramInt;
        wh localwh = paramwh;
        b = vk.a(i);
        if (b != null)
        {
          c = b.getParameters();
          ws localws = a;
          Object localObject3 = c;
          if (localObject3 != null)
          {
            Set localSet = a;
            Object localObject2 = ((Camera.Parameters)localObject3).getSupportedVideoSizes();
            Object localObject1 = localObject2;
            if (localObject2 == null) {
              localObject1 = ((Camera.Parameters)localObject3).getSupportedPreviewSizes();
            }
            localObject2 = new ArrayList(((List)localObject1).size());
            localObject1 = ((List)localObject1).iterator();
            while (((Iterator)localObject1).hasNext())
            {
              localObject3 = (Camera.Size)((Iterator)localObject1).next();
              ((List)localObject2).add(new aue(width, height));
            }
            if (localSet.addAll((Collection)localObject2))
            {
              if (b == null) {
                break label238;
              }
              localObject1 = b.edit();
              localObject2 = ws.a(a);
              ((SharedPreferences.Editor)localObject1).putString(SharedPreferenceKey.VIDEO_ENCODING_RESOLUTIONS.getKey(), (String)localObject2);
              ((SharedPreferences.Editor)localObject1).apply();
            }
          }
          for (;;)
          {
            localwh.a(localwe, i);
            return;
            label238:
            c.a(new nu());
          }
        }
        localwh.b(i);
      }
    }).sendToTarget();
  }
  
  public final void a(final SurfaceTexture paramSurfaceTexture)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.SET_TEXTURE.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        try
        {
          b.setPreviewTexture(paramSurfaceTexture);
          return;
        }
        catch (IOException localIOException)
        {
          Timber.f("SnapchatCameraManagerImpl", "Could not set preview texture", new Object[0]);
        }
      }
    }).sendToTarget();
  }
  
  public final void a(final Camera.Parameters paramParameters)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.SET_PARAMETERS.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        d = true;
        b.setParameters(paramParameters);
      }
    }).sendToTarget();
  }
  
  public final void a(final wf paramwf)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.AUTOFOCUS.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.autoFocus(paramwf);
      }
    }).sendToTarget();
  }
  
  public final void a(final wi paramwi)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.SET_CALLBACK_WITH_BUFFER.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.setPreviewCallbackWithBuffer(paramwi);
      }
    }).sendToTarget();
  }
  
  public final void a(boolean paramBoolean)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.RELEASE.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.release();
        b = null;
        c = null;
      }
    }).sendToTarget();
    if (paramBoolean) {
      e.waitDone();
    }
  }
  
  public final void a(final byte[] paramArrayOfByte)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.ADD_CALLBACK_BUFFER.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.addCallbackBuffer(paramArrayOfByte);
      }
    }).sendToTarget();
  }
  
  @cgc
  public final Camera b()
  {
    return b;
  }
  
  public final void b(boolean paramBoolean)
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.STOP_PREVIEW.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.stopPreview();
      }
    }).sendToTarget();
    if (paramBoolean) {
      e.waitDone();
    }
  }
  
  @cgc
  public final Camera.Parameters c()
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.GET_PARAMETERS.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if ((b != null) && ((d) || (c == null)))
        {
          c = b.getParameters();
          d = false;
        }
      }
    }).sendToTarget();
    e.waitDone();
    return c;
  }
  
  public final void d()
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.UNLOCK.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.unlock();
      }
    }).sendToTarget();
    e.waitDone();
  }
  
  public final void e()
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.LOCK.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.lock();
      }
    }).sendToTarget();
  }
  
  public final boolean f()
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.RECONNECT.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        try
        {
          b.reconnect();
          return;
        }
        catch (IOException localIOException) {}
      }
    }).sendToTarget();
    e.waitDone();
    return true;
  }
  
  public final void g()
  {
    e.obtainMessage(CameraOperationHandler.CameraOperationType.START_PREVIEW.ordinal(), new CameraOperationHandler.a()
    {
      public final void a()
      {
        if (b == null) {
          return;
        }
        b.startPreview();
      }
    }).sendToTarget();
  }
}

/* Location:
 * Qualified Name:     we
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */