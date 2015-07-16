import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.FloatMath;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.StringTokenizer;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

final class fy$e
  extends DefaultHandler
{
  final LinkedList<Matrix> A = new LinkedList();
  final HashMap<String, fy.a> B = new HashMap();
  fy.a C = null;
  private Canvas D;
  private Float E;
  private Float F;
  private final Matrix G = new Matrix();
  private boolean H = false;
  private int I = 0;
  private boolean J = false;
  private final RectF K = new RectF();
  private String L = null;
  Picture a;
  final LinkedList<fy.b> b = new LinkedList();
  Paint c = new Paint();
  boolean d = false;
  final LinkedList<Paint> e = new LinkedList();
  final LinkedList<Boolean> f = new LinkedList();
  Paint g;
  boolean h = false;
  final LinkedList<Paint> i = new LinkedList();
  final LinkedList<Boolean> j = new LinkedList();
  Paint k;
  boolean l;
  Float m;
  Float n;
  int o;
  Float p;
  Matrix q;
  final RectF r = new RectF();
  RectF s = null;
  final RectF t = new RectF(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
  Integer u = null;
  Integer v = null;
  Float w = null;
  boolean x = false;
  Integer y;
  final LinkedList<Boolean> z = new LinkedList();
  
  public fy$e()
  {
    c.setAntiAlias(true);
    c.setStyle(Paint.Style.STROKE);
    g = new Paint();
    g.setAntiAlias(true);
    g.setStyle(Paint.Style.FILL);
    k = new Paint();
    k.setAntiAlias(true);
    A.addFirst(new Matrix());
    b.addFirst(new fy.b(1.0F));
  }
  
  private static float a(String paramString, float paramFloat)
  {
    try
    {
      float f1 = Float.parseFloat(paramString);
      return f1;
    }
    catch (NumberFormatException paramString) {}
    return paramFloat;
  }
  
  private static fy.a a(boolean paramBoolean, Attributes paramAttributes)
  {
    fy.a locala = new fy.a((byte)0);
    a = fy.a("id", paramAttributes);
    c = paramBoolean;
    Object localObject;
    if (paramBoolean)
    {
      d = fy.a("x1", paramAttributes, 0.0F);
      f = fy.a("x2", paramAttributes, 1.0F);
      e = fy.a("y1", paramAttributes, 0.0F);
      g = fy.a("y2", paramAttributes, 0.0F);
      localObject = fy.a("gradientTransform", paramAttributes);
      if (localObject != null) {
        m = fy.a((String)localObject);
      }
      String str = fy.a("spreadMethod", paramAttributes);
      localObject = str;
      if (str == null) {
        localObject = "pad";
      }
      if (!((String)localObject).equals("reflect")) {
        break label246;
      }
      localObject = Shader.TileMode.MIRROR;
      label128:
      p = ((Shader.TileMode)localObject);
      str = fy.a("gradientUnits", paramAttributes);
      localObject = str;
      if (str == null) {
        localObject = "objectBoundingBox";
      }
      if (((String)localObject).equals("userSpaceOnUse")) {
        break label270;
      }
    }
    label246:
    label270:
    for (paramBoolean = true;; paramBoolean = false)
    {
      o = paramBoolean;
      localObject = fy.a("href", paramAttributes);
      if (localObject != null)
      {
        paramAttributes = (Attributes)localObject;
        if (((String)localObject).startsWith("#")) {
          paramAttributes = ((String)localObject).substring(1);
        }
        b = paramAttributes;
      }
      return locala;
      h = fy.a("cx", paramAttributes, 0.0F);
      i = fy.a("cy", paramAttributes, 0.0F);
      j = fy.a("r", paramAttributes, 0.0F);
      break;
      if (((String)localObject).equals("repeat"))
      {
        localObject = Shader.TileMode.REPEAT;
        break label128;
      }
      localObject = Shader.TileMode.CLAMP;
      break label128;
    }
  }
  
  private void a()
  {
    if (((Boolean)z.removeLast()).booleanValue())
    {
      D.restore();
      A.removeLast();
    }
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 < t.left) {
      t.left = paramFloat1;
    }
    if (paramFloat1 > t.right) {
      t.right = paramFloat1;
    }
    if (paramFloat2 < t.top) {
      t.top = paramFloat2;
    }
    if (paramFloat2 > t.bottom) {
      t.bottom = paramFloat2;
    }
  }
  
  private void a(RectF paramRectF, Paint paramPaint)
  {
    ((Matrix)A.getLast()).mapRect(K, paramRectF);
    if (paramPaint == null) {}
    for (float f1 = 0.0F;; f1 = paramPaint.getStrokeWidth() / 2.0F)
    {
      a(K.left - f1, K.top - f1);
      a(K.right + f1, f1 + K.bottom);
      return;
    }
  }
  
  private void a(fy.d paramd, Integer paramInteger, boolean paramBoolean, Paint paramPaint)
  {
    int i2 = 0xFFFFFF & paramInteger.intValue() | 0xFF000000;
    int i1 = i2;
    if (u != null)
    {
      i1 = i2;
      if (u.intValue() == i2) {
        i1 = v.intValue();
      }
    }
    paramPaint.setShader(null);
    paramPaint.setColor(i1);
    Float localFloat = paramd.c("opacity");
    paramInteger = localFloat;
    if (localFloat == null)
    {
      if (paramBoolean)
      {
        paramInteger = "fill-opacity";
        paramInteger = paramd.c(paramInteger);
      }
    }
    else {
      if (paramInteger == null) {
        break label160;
      }
    }
    label160:
    for (float f1 = paramInteger.floatValue();; f1 = 1.0F)
    {
      float f2 = f1 * ba;
      f1 = f2;
      if (w != null) {
        f1 = f2 * w.floatValue();
      }
      paramPaint.setAlpha((int)(f1 * 255.0F));
      return;
      paramInteger = "stroke-opacity";
      break;
    }
  }
  
  private void a(Attributes paramAttributes)
  {
    paramAttributes = fy.a("transform", paramAttributes);
    if (paramAttributes != null) {}
    for (boolean bool = true;; bool = false)
    {
      z.addLast(Boolean.valueOf(bool));
      if (bool)
      {
        paramAttributes = fy.a(paramAttributes);
        D.save();
        D.concat(paramAttributes);
        paramAttributes.postConcat((Matrix)A.getLast());
        A.addLast(paramAttributes);
      }
      return;
    }
  }
  
  private boolean a(fy.d paramd)
  {
    f3 = 0.0F;
    if (x) {}
    label114:
    label240:
    label288:
    label458:
    label494:
    do
    {
      do
      {
        return false;
      } while ("none".equals(paramd.a("display")));
      Object localObject1 = paramd.c("stroke-width");
      if (localObject1 != null) {
        c.setStrokeWidth(((Float)localObject1).floatValue());
      }
      localObject1 = paramd.a("stroke-linecap");
      Object localObject2;
      if ("round".equals(localObject1))
      {
        c.setStrokeCap(Paint.Cap.ROUND);
        localObject1 = paramd.a("stroke-linejoin");
        if (!"miter".equals(localObject1)) {
          break label240;
        }
        c.setStrokeJoin(Paint.Join.MITER);
        localObject2 = paramd.a("stroke-dasharray");
        localObject1 = paramd.a("stroke-dashoffset");
        if (localObject2 != null)
        {
          if (!((String)localObject2).equals("none")) {
            break label288;
          }
          c.setPathEffect(null);
        }
      }
      for (;;)
      {
        localObject1 = paramd.a("stroke");
        if (localObject1 == null) {
          break label494;
        }
        if (!((String)localObject1).equalsIgnoreCase("none")) {
          break label458;
        }
        c.setColor(0);
        return false;
        if ("square".equals(localObject1))
        {
          c.setStrokeCap(Paint.Cap.SQUARE);
          break;
        }
        if (!"butt".equals(localObject1)) {
          break;
        }
        c.setStrokeCap(Paint.Cap.BUTT);
        break;
        if ("round".equals(localObject1))
        {
          c.setStrokeJoin(Paint.Join.ROUND);
          break label114;
        }
        if (!"bevel".equals(localObject1)) {
          break label114;
        }
        c.setStrokeJoin(Paint.Join.BEVEL);
        break label114;
        StringTokenizer localStringTokenizer = new StringTokenizer((String)localObject2, " ,");
        int i2 = localStringTokenizer.countTokens();
        int i1 = i2;
        if ((i2 & 0x1) == 1) {
          i1 = i2 * 2;
        }
        localObject2 = new float[i1];
        f2 = 1.0F;
        float f1 = 0.0F;
        i1 = 0;
        while (localStringTokenizer.hasMoreTokens())
        {
          f2 = a(localStringTokenizer.nextToken(), f2);
          localObject2[i1] = f2;
          f1 += f2;
          i1 += 1;
        }
        i2 = 0;
        while (i1 < localObject2.length)
        {
          f2 = localObject2[i2];
          localObject2[i1] = f2;
          f1 += f2;
          i1 += 1;
          i2 += 1;
        }
        f2 = f3;
        if (localObject1 != null) {}
        try
        {
          f2 = Float.parseFloat((String)localObject1);
          f2 %= f1;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            f2 = f3;
          }
        }
        c.setPathEffect(new DashPathEffect((float[])localObject2, f2));
      }
      localObject1 = fy.d.b((String)localObject1);
      if (localObject1 != null)
      {
        a(paramd, (Integer)localObject1, false, c);
        return true;
      }
      c.setColor(0);
      return false;
      if (!d) {
        break;
      }
    } while (c.getColor() == 0);
    return true;
    c.setColor(0);
    return false;
  }
  
  private boolean a(fy.d paramd, RectF paramRectF)
  {
    if ("none".equals(paramd.a("display"))) {
      return false;
    }
    if (x)
    {
      g.setShader(null);
      g.setColor(-1);
      return true;
    }
    Object localObject2 = paramd.a("fill");
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (L != null) {
        localObject1 = L;
      }
    }
    if (localObject1 != null) {
      if (((String)localObject1).startsWith("url(#"))
      {
        localObject1 = ((String)localObject1).substring(5, ((String)localObject1).length() - 1);
        localObject2 = (fy.a)B.get(localObject1);
        if (localObject2 == null) {
          break label350;
        }
      }
    }
    label350:
    for (localObject1 = n;; localObject1 = null)
    {
      if (localObject1 != null)
      {
        g.setShader((Shader)localObject1);
        G.set(m);
        if ((o) && (paramRectF != null))
        {
          G.preTranslate(left, top);
          G.preScale(paramRectF.width(), paramRectF.height());
        }
        ((Shader)localObject1).setLocalMatrix(G);
        return true;
      }
      g.setShader(null);
      a(paramd, Integer.valueOf(-16777216), true, g);
      return true;
      if (((String)localObject1).equalsIgnoreCase("none"))
      {
        g.setShader(null);
        g.setColor(0);
        return true;
      }
      g.setShader(null);
      paramRectF = fy.d.b((String)localObject1);
      if (paramRectF != null)
      {
        a(paramd, paramRectF, true, g);
        return true;
      }
      a(paramd, Integer.valueOf(-16777216), true, g);
      return true;
      if (h)
      {
        if (g.getColor() == 0) {
          break;
        }
        return true;
      }
      g.setShader(null);
      g.setColor(-16777216);
      return true;
    }
  }
  
  private fy.b b()
  {
    return (fy.b)b.getLast();
  }
  
  public final void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (l)
    {
      if ((paramInt2 == 1) && (paramArrayOfChar[0] == '\n'))
      {
        D.restore();
        D.save();
        o += 1;
        D.translate(0.0F, o * p.floatValue());
      }
    }
    else {
      return;
    }
    paramArrayOfChar = new String(paramArrayOfChar, paramInt1, paramInt2);
    if ((m != null) && (n != null)) {
      D.drawText(paramArrayOfChar, m.floatValue(), n.floatValue(), k);
    }
    for (;;)
    {
      float f1 = k.measureText(paramArrayOfChar);
      D.translate(Float.valueOf(f1).floatValue(), 0.0F);
      return;
      D.setMatrix(q);
      D.drawText(paramArrayOfChar, 0.0F, 0.0F, k);
    }
  }
  
  public final void endDocument() {}
  
  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
    if (paramString2.equals("svg"))
    {
      if (y != null) {
        D.restoreToCount(y.intValue());
      }
      if (E != null)
      {
        paramString1 = t;
        left += E.floatValue();
        paramString1 = t;
        right += E.floatValue();
      }
      if (F != null)
      {
        paramString1 = t;
        top += F.floatValue();
        paramString1 = t;
        bottom += F.floatValue();
      }
      a.endRecording();
    }
    label342:
    do
    {
      do
      {
        for (;;)
        {
          return;
          if ((paramString2.equals("linearGradient")) || (paramString2.equals("radialGradient")))
          {
            if (C.a != null) {
              B.put(C.a, C);
            }
          }
          else
          {
            if (!paramString2.equals("defs")) {
              break;
            }
            paramString1 = B.values().iterator();
            while (paramString1.hasNext())
            {
              paramString2 = (fy.a)paramString1.next();
              if (b != null)
              {
                paramString3 = (fy.a)B.get(b);
                if (paramString3 != null)
                {
                  b = a;
                  k = k;
                  l = l;
                  if (m != null) {
                    break label342;
                  }
                  m = m;
                }
              }
              for (;;)
              {
                paramString3 = new int[l.size()];
                i1 = 0;
                while (i1 < paramString3.length)
                {
                  paramString3[i1] = ((Integer)l.get(i1)).intValue();
                  i1 += 1;
                }
                if (m != null)
                {
                  paramString3 = new Matrix(m);
                  paramString3.preConcat(m);
                  m = paramString3;
                }
              }
              float[] arrayOfFloat = new float[k.size()];
              int i1 = 0;
              while (i1 < arrayOfFloat.length)
              {
                arrayOfFloat[i1] = ((Float)k.get(i1)).floatValue();
                i1 += 1;
              }
              if (paramString3.length == 0) {
                new StringBuilder("BAD gradient, id=").append(a);
              }
              if (c) {
                n = new LinearGradient(d, e, f, g, paramString3, arrayOfFloat, p);
              } else {
                n = new RadialGradient(h, i, j, paramString3, arrayOfFloat, p);
              }
            }
          }
        }
        if (!paramString2.equals("g")) {
          break;
        }
        if (J) {
          J = false;
        }
        if (H)
        {
          I -= 1;
          if (I == 0) {
            H = false;
          }
        }
        a();
        g = ((Paint)i.removeLast());
        h = ((Boolean)j.removeLast()).booleanValue();
        c = ((Paint)e.removeLast());
        d = ((Boolean)f.removeLast()).booleanValue();
      } while (b.isEmpty());
      b.removeLast();
      return;
    } while ((!paramString2.equals("text")) || (!l));
    l = false;
    D.restore();
  }
  
  public final void startDocument() {}
  
  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    c.setAlpha(255);
    g.setAlpha(255);
    k.setAlpha(255);
    l = false;
    if (J) {
      if (paramString2.equals("rect"))
      {
        paramString2 = fy.b("x", paramAttributes);
        paramString1 = paramString2;
        if (paramString2 == null) {
          paramString1 = Float.valueOf(0.0F);
        }
        paramString3 = fy.b("y", paramAttributes);
        paramString2 = paramString3;
        if (paramString3 == null) {
          paramString2 = Float.valueOf(0.0F);
        }
        paramString3 = fy.b("width", paramAttributes);
        paramAttributes = fy.b("height", paramAttributes);
        s = new RectF(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + paramAttributes.floatValue());
      }
    }
    label950:
    label1326:
    label1665:
    do
    {
      do
      {
        do
        {
          for (;;)
          {
            return;
            Object localObject1;
            float f3;
            float f4;
            float f1;
            float f2;
            if (paramString2.equals("svg"))
            {
              D = null;
              L = fy.a("fill", paramAttributes);
              paramString1 = fy.a("viewBox", paramAttributes);
              if (paramString1 != null)
              {
                localObject1 = paramString1.replace(',', ' ').split("\\s+");
                if (localObject1.length == 4)
                {
                  paramString1 = fy.b(localObject1[0]);
                  paramString2 = fy.b(localObject1[1]);
                  paramString3 = fy.b(localObject1[2]);
                  localObject1 = fy.b(localObject1[3]);
                  if ((paramString1 != null) && (paramString3 != null) && (paramString2 != null) && (localObject1 != null))
                  {
                    f3 = paramString3.floatValue();
                    f4 = paramString1.floatValue();
                    f1 = ((Float)localObject1).floatValue();
                    f2 = paramString2.floatValue();
                    f3 = FloatMath.ceil(Float.valueOf(f3 + f4).floatValue() - paramString1.floatValue());
                    f1 = FloatMath.ceil(Float.valueOf(f1 + f2).floatValue() - paramString2.floatValue());
                    D = a.beginRecording((int)f3, (int)f1);
                    y = Integer.valueOf(D.save());
                    D.clipRect(0.0F, 0.0F, f3, f1);
                    E = Float.valueOf(-paramString1.floatValue());
                    F = Float.valueOf(-paramString2.floatValue());
                    D.translate(E.floatValue(), F.floatValue());
                  }
                }
              }
              if (D == null)
              {
                i1 = (int)FloatMath.ceil(fy.b("width", paramAttributes).floatValue());
                int i2 = (int)FloatMath.ceil(fy.b("height", paramAttributes).floatValue());
                D = a.beginRecording(i1, i2);
                y = null;
              }
            }
            else if (!paramString2.equals("defs"))
            {
              if (paramString2.equals("linearGradient"))
              {
                C = a(true, paramAttributes);
                return;
              }
              if (paramString2.equals("radialGradient"))
              {
                C = a(false, paramAttributes);
                return;
              }
              if (paramString2.equals("stop"))
              {
                if (C != null)
                {
                  paramString1 = new fy.d(paramAttributes, (byte)0);
                  paramString2 = fy.d.b(paramString1.a("stop-color"));
                  if (paramString2 == null) {}
                  for (i1 = 0;; i1 = paramString2.intValue() | i1 << 24)
                  {
                    C.l.add(Integer.valueOf(i1));
                    f1 = paramString1.a("offset", 0.0F);
                    C.k.add(Float.valueOf(f1));
                    return;
                    i1 = Math.round(paramString1.a("stop-opacity", 1.0F) * ba * 255.0F);
                  }
                }
              }
              else
              {
                if (paramString2.equals("g"))
                {
                  paramString1 = new fy.d(paramAttributes, (byte)0);
                  if ("bounds".equalsIgnoreCase(fy.a("id", paramAttributes))) {
                    J = true;
                  }
                  if (H) {
                    I += 1;
                  }
                  if ((("none".equals(fy.a("display", paramAttributes))) || ("none".equals(paramString1.a("display")))) && (!H))
                  {
                    H = true;
                    I = 1;
                  }
                  paramString2 = new fy.b(paramString1.a("opacity", 1.0F) * ba);
                  b.addLast(paramString2);
                  a(paramAttributes);
                  i.addLast(new Paint(g));
                  e.addLast(new Paint(c));
                  j.addLast(Boolean.valueOf(h));
                  f.addLast(Boolean.valueOf(d));
                  a(paramString1, null);
                  a(paramString1);
                  int i3 = h;
                  int i4;
                  if (paramString1.a("fill") != null)
                  {
                    i1 = 1;
                    h = (i1 | i3);
                    i4 = d;
                    if (paramString1.a("stroke") == null) {
                      break label950;
                    }
                  }
                  for (i1 = 1;; i1 = 0)
                  {
                    d = (i1 | i4);
                    return;
                    i1 = 0;
                    break;
                  }
                }
                Object localObject2;
                if ((!H) && (paramString2.equals("rect")))
                {
                  paramString2 = fy.b("x", paramAttributes);
                  paramString1 = paramString2;
                  if (paramString2 == null) {
                    paramString1 = Float.valueOf(0.0F);
                  }
                  paramString3 = fy.b("y", paramAttributes);
                  paramString2 = paramString3;
                  if (paramString3 == null) {
                    paramString2 = Float.valueOf(0.0F);
                  }
                  paramString3 = fy.b("width", paramAttributes);
                  localObject1 = fy.b("height", paramAttributes);
                  localObject2 = Float.valueOf(fy.a("rx", paramAttributes, 0.0F));
                  Float localFloat = Float.valueOf(fy.a("ry", paramAttributes, 0.0F));
                  a(paramAttributes);
                  paramAttributes = new fy.d(paramAttributes, (byte)0);
                  r.set(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue());
                  if (a(paramAttributes, r))
                  {
                    r.set(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue());
                    if ((((Float)localObject2).floatValue() <= 0.0F) && (localFloat.floatValue() <= 0.0F))
                    {
                      D.drawRect(r, g);
                      a(r, null);
                    }
                  }
                  else if (a(paramAttributes))
                  {
                    r.set(paramString1.floatValue(), paramString2.floatValue(), paramString1.floatValue() + paramString3.floatValue(), paramString2.floatValue() + ((Float)localObject1).floatValue());
                    if ((((Float)localObject2).floatValue() > 0.0F) || (localFloat.floatValue() > 0.0F)) {
                      break label1326;
                    }
                    D.drawRect(r, c);
                  }
                  for (;;)
                  {
                    a(r, c);
                    a();
                    return;
                    D.drawRoundRect(r, ((Float)localObject2).floatValue(), localFloat.floatValue(), g);
                    break;
                    D.drawRoundRect(r, ((Float)localObject2).floatValue(), localFloat.floatValue(), c);
                  }
                }
                if ((!H) && (paramString2.equals("line")))
                {
                  paramString1 = fy.b("x1", paramAttributes);
                  paramString2 = fy.b("x2", paramAttributes);
                  paramString3 = fy.b("y1", paramAttributes);
                  localObject1 = fy.b("y2", paramAttributes);
                  if (a(new fy.d(paramAttributes, (byte)0)))
                  {
                    a(paramAttributes);
                    r.set(paramString1.floatValue(), paramString3.floatValue(), paramString2.floatValue(), ((Float)localObject1).floatValue());
                    D.drawLine(paramString1.floatValue(), paramString3.floatValue(), paramString2.floatValue(), ((Float)localObject1).floatValue(), c);
                    a(r, c);
                    a();
                  }
                }
                else if ((!H) && (paramString2.equals("text")))
                {
                  paramString1 = fy.b("x", paramAttributes);
                  paramString2 = fy.b("y", paramAttributes);
                  paramString3 = fy.b("font-size", paramAttributes);
                  localObject1 = fy.a(fy.a("transform", paramAttributes));
                  l = true;
                  if (paramString3 != null)
                  {
                    p = paramString3;
                    a(paramAttributes);
                    if ((paramString1 != null) && (paramString2 != null))
                    {
                      m = paramString1;
                      n = paramString2;
                      paramString1 = new fy.d(paramAttributes, (byte)0);
                      paramString2 = fy.d.b("fill");
                      if (paramString2 == null) {
                        break label1665;
                      }
                      a(paramString1, paramString2, true, k);
                    }
                    for (;;)
                    {
                      o = 0;
                      k.setTextSize(p.floatValue());
                      D.save();
                      a();
                      return;
                      q = ((Matrix)localObject1);
                      break;
                      k.setColor(-16777216);
                    }
                  }
                }
                else
                {
                  if ((H) || ((!paramString2.equals("circle")) && (!paramString2.equals("ellipse")))) {
                    break;
                  }
                  paramString3 = fy.b("cx", paramAttributes);
                  localObject1 = fy.b("cy", paramAttributes);
                  if (paramString2.equals("ellipse"))
                  {
                    paramString2 = fy.b("rx", paramAttributes);
                    paramString1 = fy.b("ry", paramAttributes);
                  }
                  while ((paramString3 != null) && (localObject1 != null) && (paramString2 != null) && (paramString1 != null))
                  {
                    a(paramAttributes);
                    paramAttributes = new fy.d(paramAttributes, (byte)0);
                    localObject2 = r;
                    f1 = paramString3.floatValue();
                    f2 = paramString2.floatValue();
                    f3 = ((Float)localObject1).floatValue();
                    f4 = paramString1.floatValue();
                    float f5 = paramString3.floatValue();
                    float f6 = paramString2.floatValue();
                    float f7 = ((Float)localObject1).floatValue();
                    ((RectF)localObject2).set(f1 - f2, f3 - f4, f6 + f5, paramString1.floatValue() + f7);
                    if (a(paramAttributes, r))
                    {
                      D.drawOval(r, g);
                      a(r, null);
                    }
                    if (a(paramAttributes))
                    {
                      D.drawOval(r, c);
                      a(r, c);
                    }
                    a();
                    return;
                    paramString1 = fy.b("r", paramAttributes);
                    paramString2 = paramString1;
                  }
                }
              }
            }
          }
          if ((H) || ((!paramString2.equals("polygon")) && (!paramString2.equals("polyline")))) {
            break;
          }
          paramString3 = fy.c("points", paramAttributes);
        } while (paramString3 == null);
        paramString1 = new Path();
        paramString3 = a;
      } while (paramString3.size() <= 1);
      a(paramAttributes);
      paramAttributes = new fy.d(paramAttributes, (byte)0);
      paramString1.moveTo(((Float)paramString3.get(0)).floatValue(), ((Float)paramString3.get(1)).floatValue());
      int i1 = 2;
      while (i1 < paramString3.size())
      {
        paramString1.lineTo(((Float)paramString3.get(i1)).floatValue(), ((Float)paramString3.get(i1 + 1)).floatValue());
        i1 += 2;
      }
      if (paramString2.equals("polygon")) {
        paramString1.close();
      }
      paramString1.computeBounds(r, false);
      if (a(paramAttributes, r))
      {
        D.drawPath(paramString1, g);
        a(r, null);
      }
      if (a(paramAttributes))
      {
        D.drawPath(paramString1, c);
        a(r, c);
      }
      a();
      return;
    } while ((H) || (!paramString2.equals("path")));
    paramString1 = fy.c(fy.a("d", paramAttributes));
    a(paramAttributes);
    paramString2 = new fy.d(paramAttributes, (byte)0);
    paramString1.computeBounds(r, false);
    if (a(paramString2, r))
    {
      D.drawPath(paramString1, g);
      a(r, null);
    }
    if (a(paramString2))
    {
      D.drawPath(paramString1, c);
      a(r, c);
    }
    a();
  }
}

/* Location:
 * Qualified Name:     fy.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */