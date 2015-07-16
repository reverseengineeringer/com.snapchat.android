import android.view.MotionEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class ard<T>
{
  private static Method A;
  private static Method B;
  private static Method C;
  private static Method D;
  private static int E = 6;
  private static int F = 8;
  private static final float[] G;
  private static final float[] H;
  private static final float[] I;
  private static final int[] J;
  public static final boolean b;
  private static Method w;
  private static Method x;
  private static Method y;
  private static Method z;
  ard.a<T> a;
  private ard.b c = new ard.b();
  private ard.b d = new ard.b();
  private float e;
  private float f;
  private float g;
  private float h;
  private float i;
  private float j;
  private boolean k = true;
  private T l = null;
  private ard.c m = new ard.c();
  private long n;
  private long o;
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private float u;
  private int v = 0;
  
  static
  {
    boolean bool = true;
    try
    {
      w = MotionEvent.class.getMethod("getPointerCount", new Class[0]);
      x = MotionEvent.class.getMethod("getPointerId", new Class[] { Integer.TYPE });
      y = MotionEvent.class.getMethod("getPressure", new Class[] { Integer.TYPE });
      z = MotionEvent.class.getMethod("getHistoricalX", new Class[] { Integer.TYPE, Integer.TYPE });
      A = MotionEvent.class.getMethod("getHistoricalY", new Class[] { Integer.TYPE, Integer.TYPE });
      B = MotionEvent.class.getMethod("getHistoricalPressure", new Class[] { Integer.TYPE, Integer.TYPE });
      C = MotionEvent.class.getMethod("getX", new Class[] { Integer.TYPE });
      D = MotionEvent.class.getMethod("getY", new Class[] { Integer.TYPE });
      b = bool;
      if (!bool) {}
    }
    catch (Exception localException1)
    {
      try
      {
        E = MotionEvent.class.getField("ACTION_POINTER_UP").getInt(null);
        F = MotionEvent.class.getField("ACTION_POINTER_INDEX_SHIFT").getInt(null);
        G = new float[20];
        H = new float[20];
        I = new float[20];
        J = new int[20];
        return;
        localException1 = localException1;
        bool = false;
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
    }
  }
  
  public ard(ard.a<T> parama)
  {
    this(parama, (byte)0);
  }
  
  private ard(ard.a<T> parama, byte paramByte)
  {
    a = parama;
  }
  
  private void a()
  {
    float f2 = 0.0F;
    e = c.f;
    f = c.g;
    if (!m.g) {}
    label80:
    ard.b localb;
    for (float f1 = 0.0F;; f1 = k)
    {
      g = Math.max(21.3F, f1);
      if (m.h) {
        break label357;
      }
      f1 = 0.0F;
      h = Math.max(30.0F, f1);
      if (m.h) {
        break label368;
      }
      f1 = 0.0F;
      i = Math.max(30.0F, f1);
      if (m.i) {
        break label379;
      }
      f1 = f2;
      j = f1;
      return;
      localb = c;
      if (!q)
      {
        if (o) {
          break;
        }
        k = 0.0F;
        q = true;
      }
    }
    if (!p) {
      if (!o) {
        break label274;
      }
    }
    label217:
    label274:
    for (f1 = i * i + j * j;; f1 = 0.0F)
    {
      l = f1;
      p = true;
      f1 = l;
      if (f1 != 0.0F) {
        break label279;
      }
      f1 = 0.0F;
      k = f1;
      if (k < i) {
        k = i;
      }
      if (k >= j) {
        break;
      }
      k = j;
      break;
    }
    label279:
    int i3 = (int)(f1 * 256.0F);
    int i2 = 32768;
    int i1 = 15;
    int i6 = 0;
    for (;;)
    {
      int i7 = (i6 << 1) + i2 << i1;
      int i5 = i6;
      int i4 = i3;
      if (i3 >= i7)
      {
        i5 = i6 + i2;
        i4 = i3 - i7;
      }
      i2 >>= 1;
      if (i2 <= 0)
      {
        f1 = i5 / 16.0F;
        break label217;
        label357:
        f1 = c.a();
        break;
        label368:
        f1 = c.b();
        break label80;
        label379:
        localb = c;
        if (!r) {
          if (o) {
            break label422;
          }
        }
        label422:
        for (m = 0.0F;; m = ((float)Math.atan2(c[1] - c[0], b[1] - b[0])))
        {
          r = true;
          f1 = m;
          break;
        }
      }
      i1 -= 1;
      i6 = i5;
      i3 = i4;
    }
  }
  
  private void b()
  {
    if (l == null) {
      return;
    }
    a.b(l, m);
    a();
    p = (e - m.a);
    q = (f - m.b);
    r = (m.c / g);
    t = (m.d / h);
    u = (m.e / i);
    s = (m.f - j);
  }
  
  private void c()
  {
    float f2 = 1.0F;
    if (l == null) {
      return;
    }
    a();
    float f1 = e;
    float f8 = p;
    float f9 = f;
    float f10 = q;
    float f5 = r * g;
    float f4 = t * h;
    float f3 = u * i;
    float f6 = s;
    float f7 = j;
    ard.c localc = m;
    a = (f1 - f8);
    b = (f9 - f10);
    f1 = f5;
    if (f5 == 0.0F) {
      f1 = 1.0F;
    }
    c = f1;
    if (f4 == 0.0F)
    {
      f1 = 1.0F;
      d = f1;
      if (f3 != 0.0F) {
        break label188;
      }
    }
    label188:
    for (f1 = f2;; f1 = f3)
    {
      e = f1;
      f = (f6 + f7);
      a.a(l, m);
      return;
      f1 = f4;
      break;
    }
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    try
    {
      int i1;
      int i5;
      int i6;
      int i2;
      Object localObject;
      int i3;
      float f1;
      label115:
      label140:
      float[] arrayOfFloat1;
      float[] arrayOfFloat2;
      int i4;
      label168:
      label204:
      long l1;
      ard.b localb;
      if (b)
      {
        i1 = ((Integer)w.invoke(paramMotionEvent, new Object[0])).intValue();
        if ((v == 0) && (!k) && (i1 == 1)) {
          return false;
        }
        i5 = paramMotionEvent.getAction();
        i6 = paramMotionEvent.getHistorySize() / i1;
        i2 = 0;
        break label1284;
        int[] arrayOfInt;
        if ((!b) || (i1 == 1))
        {
          localObject = G;
          if (i3 != 0)
          {
            f1 = paramMotionEvent.getHistoricalX(i2);
            localObject[0] = f1;
            localObject = H;
            if (i3 == 0) {
              break label341;
            }
            f1 = paramMotionEvent.getHistoricalY(i2);
            localObject[0] = f1;
            localObject = I;
            if (i3 == 0) {
              break label349;
            }
            f1 = paramMotionEvent.getHistoricalPressure(i2);
            break label1304;
            localObject = G;
            arrayOfFloat1 = H;
            arrayOfFloat2 = I;
            arrayOfInt = J;
            if (i3 == 0) {
              break label1324;
            }
            i4 = 2;
            if (i3 != 0) {
              break label1312;
            }
            if ((i5 == 1) || (((1 << F) - 1 & i5) == E) || (i5 == 3)) {
              break label1331;
            }
            break label1312;
            if (i3 == 0) {
              break label656;
            }
          }
        }
        label341:
        label349:
        label368:
        label449:
        label504:
        label584:
        label608:
        label632:
        label656:
        for (l1 = paramMotionEvent.getHistoricalEventTime(i2);; l1 = paramMotionEvent.getEventTime())
        {
          localb = d;
          d = c;
          c = localb;
          localb = c;
          t = l1;
          s = i4;
          a = i1;
          i3 = 0;
          while (i3 < i1)
          {
            b[i3] = localObject[i3];
            c[i3] = arrayOfFloat1[i3];
            d[i3] = arrayOfFloat2[i3];
            e[i3] = arrayOfInt[i3];
            i3 += 1;
          }
          f1 = paramMotionEvent.getX();
          break;
          f1 = paramMotionEvent.getY();
          break label115;
          f1 = paramMotionEvent.getPressure();
          break label1304;
          int i7 = Math.min(i1, 20);
          i4 = 0;
          if (i4 < i7)
          {
            int i8 = ((Integer)x.invoke(paramMotionEvent, new Object[] { Integer.valueOf(i4) })).intValue();
            J[i4] = i8;
            arrayOfFloat1 = G;
            if (i3 == 0) {
              break label584;
            }
            localObject = z.invoke(paramMotionEvent, new Object[] { Integer.valueOf(i4), Integer.valueOf(i2) });
            arrayOfFloat1[i4] = ((Float)(Float)localObject).floatValue();
            arrayOfFloat1 = H;
            if (i3 == 0) {
              break label608;
            }
            localObject = A.invoke(paramMotionEvent, new Object[] { Integer.valueOf(i4), Integer.valueOf(i2) });
            arrayOfFloat1[i4] = ((Float)(Float)localObject).floatValue();
            arrayOfFloat1 = I;
            if (i3 == 0) {
              break label632;
            }
          }
          for (localObject = B.invoke(paramMotionEvent, new Object[] { Integer.valueOf(i4), Integer.valueOf(i2) });; localObject = y.invoke(paramMotionEvent, new Object[] { Integer.valueOf(i4) }))
          {
            arrayOfFloat1[i4] = ((Float)(Float)localObject).floatValue();
            i4 += 1;
            break label368;
            break;
            localObject = C.invoke(paramMotionEvent, new Object[] { Integer.valueOf(i4) });
            break label449;
            localObject = D.invoke(paramMotionEvent, new Object[] { Integer.valueOf(i4) });
            break label504;
          }
        }
        n = bool;
        if (i1 < 2) {
          break label1346;
        }
      }
      label1277:
      label1284:
      label1304:
      label1312:
      label1324:
      label1331:
      label1337:
      label1346:
      for (boolean bool = true;; bool = false)
      {
        o = bool;
        if (o)
        {
          f = ((localObject[0] + localObject[1]) * 0.5F);
          g = ((arrayOfFloat1[0] + arrayOfFloat1[1]) * 0.5F);
          h = ((arrayOfFloat2[0] + arrayOfFloat2[1]) * 0.5F);
          i = Math.abs(localObject[1] - localObject[0]);
          j = Math.abs(arrayOfFloat1[1] - arrayOfFloat1[0]);
        }
        for (;;)
        {
          r = false;
          q = false;
          p = false;
          switch (v)
          {
          case 0: 
            f = localObject[0];
            g = arrayOfFloat1[0];
            h = arrayOfFloat2[0];
            j = 0.0F;
            i = 0.0F;
          }
        }
        if (c.n)
        {
          l = a.getDraggableObjectAtPoint$73035ef();
          if (l != null)
          {
            v = 1;
            b();
            l1 = c.t;
            o = l1;
            n = l1;
            break label1337;
            if (!c.n)
            {
              v = 0;
              l = null;
            }
            else if (c.o)
            {
              v = 2;
              b();
              n = c.t;
              o = (n + 20L);
            }
            else if (c.t < o)
            {
              b();
            }
            else
            {
              c();
              break label1337;
              if ((!c.o) || (!c.n))
              {
                if (!c.n)
                {
                  v = 0;
                  l = null;
                }
                else
                {
                  v = 1;
                  b();
                  n = c.t;
                  o = (n + 20L);
                }
              }
              else if ((Math.abs(c.f - d.f) > 30.0F) || (Math.abs(c.g - d.g) > 30.0F) || (Math.abs(c.a() - d.a()) * 0.5F > 40.0F) || (Math.abs(c.b() - d.b()) * 0.5F > 40.0F))
              {
                b();
                n = c.t;
                o = (n + 20L);
              }
              else if (c.t < o)
              {
                b();
              }
              else
              {
                c();
                break label1337;
                return true;
                i1 = 1;
                break;
              }
            }
          }
        }
        for (;;)
        {
          if (i2 > i6) {
            break label1277;
          }
          if (i2 < i6)
          {
            i3 = 1;
            break;
            localObject[0] = f1;
            break label140;
            bool = true;
            break label204;
          }
          i3 = 0;
          break;
          i4 = i5;
          break label168;
          bool = false;
          break label204;
          i2 += 1;
        }
      }
      return false;
    }
    catch (Exception paramMotionEvent) {}
  }
  
  public static abstract interface a<T>
  {
    public abstract boolean a(T paramT, ard.c paramc);
    
    public abstract void b(T paramT, ard.c paramc);
    
    public abstract T getDraggableObjectAtPoint$73035ef();
  }
  
  public static final class b
  {
    int a;
    float[] b = new float[20];
    float[] c = new float[20];
    float[] d = new float[20];
    int[] e = new int[20];
    float f;
    float g;
    float h;
    float i;
    float j;
    float k;
    float l;
    float m;
    boolean n;
    boolean o;
    boolean p;
    boolean q;
    boolean r;
    int s;
    long t;
    
    public final float a()
    {
      if (o) {
        return i;
      }
      return 0.0F;
    }
    
    public final float b()
    {
      if (o) {
        return j;
      }
      return 0.0F;
    }
  }
  
  public static final class c
  {
    public float a;
    public float b;
    public float c;
    float d;
    float e;
    public float f;
    public boolean g;
    boolean h;
    public boolean i;
    
    public final void a(float paramFloat1, float paramFloat2, boolean paramBoolean1, float paramFloat3, boolean paramBoolean2, float paramFloat4, float paramFloat5, boolean paramBoolean3, float paramFloat6)
    {
      float f1 = 1.0F;
      a = paramFloat1;
      b = paramFloat2;
      g = paramBoolean1;
      paramFloat1 = paramFloat3;
      if (paramFloat3 == 0.0F) {
        paramFloat1 = 1.0F;
      }
      c = paramFloat1;
      h = paramBoolean2;
      paramFloat1 = paramFloat4;
      if (paramFloat4 == 0.0F) {
        paramFloat1 = 1.0F;
      }
      d = paramFloat1;
      if (paramFloat5 == 0.0F) {}
      for (paramFloat1 = f1;; paramFloat1 = paramFloat5)
      {
        e = paramFloat1;
        i = paramBoolean3;
        f = paramFloat6;
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     ard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */