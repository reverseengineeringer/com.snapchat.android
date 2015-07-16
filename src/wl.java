import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.media.ThumbnailUtils;
import android.provider.MediaStore.Images.Media;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;
import com.squareup.otto.Bus;

public final class wl
  extends wj
{
  private final bfe n;
  private final TextView o;
  private final boolean p;
  
  public wl(Context paramContext, RelativeLayout paramRelativeLayout, CameraDecor.CameraDecorInterface paramCameraDecorInterface, bfe parambfe)
  {
    super(paramContext, paramRelativeLayout, paramCameraDecorInterface);
    n = parambfe;
    o = g;
    this.f.setBackgroundResource(2130837537);
    this.f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.i().onBackPressed();
      }
    });
    paramRelativeLayout = avp.a(paramContext, 2130837538);
    if (paramRelativeLayout == null)
    {
      paramContext = localRectF;
      if (paramContext != null) {
        break label360;
      }
      o.setBackgroundResource(2130837539);
    }
    for (;;)
    {
      o.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent("android.intent.action.PICK");
          paramAnonymousView.setType("image/*");
          FragmentActivity localFragmentActivity = a.i();
          if (paramAnonymousView.resolveActivity(localFragmentActivity.getPackageManager()) != null) {
            localFragmentActivity.startActivityForResult(paramAnonymousView, 1001);
          }
        }
      });
      p = mDuringPresence;
      a();
      return;
      int i = paramRelativeLayout.getWidth();
      paramCameraDecorInterface = avp.a(i, i, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(paramCameraDecorInterface);
      Paint localPaint = new Paint();
      float f = 0.31F * localCanvas.getWidth();
      Bitmap localBitmap = a(paramContext, (int)(i - 2.0F * f));
      if (localBitmap == null)
      {
        paramCameraDecorInterface.recycle();
        paramRelativeLayout.recycle();
        paramContext = localRectF;
        break;
      }
      localPaint.setShader(new BitmapShader(localBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
      localCanvas.save();
      localCanvas.translate(f, f);
      localRectF = new RectF(0.0F, 0.0F, localCanvas.getWidth() - 2.0F * f, localCanvas.getHeight() - f * 2.0F);
      i = (int)awf.a(5.0F, paramContext);
      localCanvas.drawRoundRect(localRectF, i, i, localPaint);
      localCanvas.restore();
      localRectF = new RectF(0.0F, 0.0F, localCanvas.getWidth(), localCanvas.getHeight());
      localPaint.setShader(new BitmapShader(paramRelativeLayout, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
      localCanvas.drawRect(localRectF, localPaint);
      localBitmap.recycle();
      paramRelativeLayout.recycle();
      paramContext = new BitmapDrawable(paramContext.getResources(), paramCameraDecorInterface);
      break;
      label360:
      o.setBackgroundDrawable(paramContext);
    }
  }
  
  @chd
  private static Bitmap a(@chc Context paramContext, int paramInt)
  {
    Object localObject = paramContext.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[] { "_data" }, null, null, "date_modified DESC");
    if (localObject != null) {}
    try
    {
      boolean bool = ((Cursor)localObject).moveToFirst();
      if (!bool) {}
      do
      {
        return null;
        byte[] arrayOfByte = avp.a(((Cursor)localObject).getString(((Cursor)localObject).getColumnIndex("_data")));
        if (arrayOfByte == null) {
          return null;
        }
        paramContext = avp.a(paramContext, arrayOfByte);
        if (localObject != null) {
          ((Cursor)localObject).close();
        }
      } while (paramContext == null);
      localObject = ThumbnailUtils.extractThumbnail(paramContext, paramInt, paramInt);
      paramContext.recycle();
      return (Bitmap)localObject;
    }
    finally
    {
      if (localObject != null) {
        ((Cursor)localObject).close();
      }
    }
  }
  
  public final void b() {}
  
  public final void c()
  {
    bbo.a().a(new beg(false));
  }
  
  public final boolean f()
  {
    a.a(n.mOriginatingFragment, false);
    bbo.a().a(new bbs(true, p));
    return true;
  }
  
  protected final boolean h()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     wl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */