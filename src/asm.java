import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public abstract class asm
{
  protected Paint a;
  
  public abstract String a();
  
  public void a(int paramInt) {}
  
  public void a(int paramInt, Context paramContext) {}
  
  public final void a(Paint paramPaint)
  {
    a = paramPaint;
  }
  
  public void a(boolean paramBoolean, Bitmap paramBitmap) {}
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public abstract FilterPageType b();
  
  @chd
  public final Paint c()
  {
    return a;
  }
  
  public View d()
  {
    return null;
  }
  
  public void e() {}
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof asm)) {
      return false;
    }
    paramObject = (asm)paramObject;
    return TextUtils.equals(a(), ((asm)paramObject).a());
  }
  
  public boolean f()
  {
    return true;
  }
  
  public void g() {}
  
  public void h() {}
  
  public int hashCode()
  {
    return a().hashCode();
  }
  
  public void i() {}
}

/* Location:
 * Qualified Name:     asm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */