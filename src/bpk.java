import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

abstract class bpk<T>
{
  final bqe a;
  final bqh b;
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
  
  bpk(bqe parambqe, T paramT, bqh parambqh, int paramInt1, int paramInt2, int paramInt3, Drawable paramDrawable, String paramString, Object paramObject, boolean paramBoolean)
  {
    a = parambqe;
    b = parambqh;
    if (paramT == null)
    {
      parambqe = null;
      c = parambqe;
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
      parambqe = new bpk.a(this, paramT, l);
      break;
      label90:
      paramObject = this;
    }
  }
  
  abstract void a();
  
  abstract void a(Bitmap paramBitmap, bqe.d paramd);
  
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
    final bpk a;
    
    public a(bpk parambpk, M paramM, ReferenceQueue<? super M> paramReferenceQueue)
    {
      super(paramReferenceQueue);
      a = parambpk;
    }
  }
}

/* Location:
 * Qualified Name:     bpk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */