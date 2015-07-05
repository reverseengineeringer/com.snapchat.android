import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

abstract class boj<T>
{
  final bpd a;
  final bpg b;
  final WeakReference<T> c;
  final boolean d;
  final int e;
  final int f;
  final int g;
  final Drawable h;
  final String i;
  final Object j;
  boolean k;
  boolean l;
  
  boj(bpd parambpd, T paramT, bpg parambpg, int paramInt1, int paramInt2, int paramInt3, Drawable paramDrawable, String paramString, Object paramObject, boolean paramBoolean)
  {
    a = parambpd;
    b = parambpg;
    if (paramT == null)
    {
      parambpd = null;
      c = parambpd;
      e = paramInt1;
      f = paramInt2;
      d = paramBoolean;
      g = paramInt3;
      h = paramDrawable;
      i = paramString;
      if (paramObject == null) {
        break label90;
      }
    }
    for (;;)
    {
      j = paramObject;
      return;
      parambpd = new boj.a(this, paramT, l);
      break;
      label90:
      paramObject = this;
    }
  }
  
  abstract void a();
  
  abstract void a(Bitmap paramBitmap, bpd.d paramd);
  
  void b()
  {
    l = true;
  }
  
  T c()
  {
    if (c == null) {
      return null;
    }
    return (T)c.get();
  }
  
  static final class a<M>
    extends WeakReference<M>
  {
    final boj a;
    
    public a(boj paramboj, M paramM, ReferenceQueue<? super M> paramReferenceQueue)
    {
      super(paramReferenceQueue);
      a = paramboj;
    }
  }
}

/* Location:
 * Qualified Name:     boj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */