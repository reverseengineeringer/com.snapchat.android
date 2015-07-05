package com.google.gson.stream;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

public class JsonWriter
  implements Closeable, Flushable
{
  private static final String[] a = new String[''];
  private static final String[] b;
  private final Writer c;
  private int[] d = new int[32];
  private int e = 0;
  private String f;
  private String g;
  private boolean h;
  private boolean i;
  private String j;
  private boolean k;
  
  static
  {
    int m = 0;
    while (m <= 31)
    {
      a[m] = String.format("\\u%04x", new Object[] { Integer.valueOf(m) });
      m += 1;
    }
    a[34] = "\\\"";
    a[92] = "\\\\";
    a[9] = "\\t";
    a[8] = "\\b";
    a[10] = "\\n";
    a[13] = "\\r";
    a[12] = "\\f";
    String[] arrayOfString = (String[])a.clone();
    b = arrayOfString;
    arrayOfString[60] = "\\u003c";
    b[62] = "\\u003e";
    b[38] = "\\u0026";
    b[61] = "\\u003d";
    b[39] = "\\u0027";
  }
  
  public JsonWriter(Writer paramWriter)
  {
    a(6);
    g = ":";
    k = true;
    if (paramWriter == null) {
      throw new NullPointerException("out == null");
    }
    c = paramWriter;
  }
  
  private int a()
  {
    if (e == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    return d[(e - 1)];
  }
  
  private JsonWriter a(int paramInt1, int paramInt2, String paramString)
  {
    int m = a();
    if ((m != paramInt2) && (m != paramInt1)) {
      throw new IllegalStateException("Nesting problem.");
    }
    if (j != null) {
      throw new IllegalStateException("Dangling name: " + j);
    }
    e -= 1;
    if (m == paramInt2) {
      c();
    }
    c.write(paramString);
    return this;
  }
  
  private JsonWriter a(int paramInt, String paramString)
  {
    a(true);
    a(paramInt);
    c.write(paramString);
    return this;
  }
  
  private void a(int paramInt)
  {
    if (e == d.length)
    {
      arrayOfInt = new int[e * 2];
      System.arraycopy(d, 0, arrayOfInt, 0, e);
      d = arrayOfInt;
    }
    int[] arrayOfInt = d;
    int m = e;
    e = (m + 1);
    arrayOfInt[m] = paramInt;
  }
  
  private void a(String paramString)
  {
    int n = 0;
    if (i) {}
    int i2;
    int m;
    int i3;
    int i1;
    for (String[] arrayOfString = b;; arrayOfString = a)
    {
      c.write("\"");
      i2 = paramString.length();
      m = 0;
      for (;;)
      {
        if (m >= i2) {
          break label153;
        }
        i3 = paramString.charAt(m);
        if (i3 >= 128) {
          break;
        }
        String str2 = arrayOfString[i3];
        str1 = str2;
        if (str2 != null) {
          break label101;
        }
        i1 = n;
        m += 1;
        n = i1;
      }
    }
    if (i3 == 8232) {}
    for (String str1 = "\\u2028";; str1 = "\\u2029")
    {
      label101:
      if (n < m) {
        c.write(paramString, n, m - n);
      }
      c.write(str1);
      i1 = m + 1;
      break;
      i1 = n;
      if (i3 != 8233) {
        break;
      }
    }
    label153:
    if (n < i2) {
      c.write(paramString, n, i2 - n);
    }
    c.write("\"");
  }
  
  private void a(boolean paramBoolean)
  {
    switch (a())
    {
    case 3: 
    case 5: 
    default: 
      throw new IllegalStateException("Nesting problem.");
    case 7: 
      if (!h) {
        throw new IllegalStateException("JSON must have only one top-level value.");
      }
    case 6: 
      if ((!h) && (!paramBoolean)) {
        throw new IllegalStateException("JSON must start with an array or an object.");
      }
      b(7);
      return;
    case 1: 
      b(2);
      c();
      return;
    case 2: 
      c.append(',');
      c();
      return;
    }
    c.append(g);
    b(5);
  }
  
  private void b()
  {
    int m;
    if (j != null)
    {
      m = a();
      if (m != 5) {
        break label49;
      }
      c.write(44);
    }
    label49:
    while (m == 3)
    {
      c();
      b(4);
      a(j);
      j = null;
      return;
    }
    throw new IllegalStateException("Nesting problem.");
  }
  
  private void b(int paramInt)
  {
    d[(e - 1)] = paramInt;
  }
  
  private void c()
  {
    if (f == null) {}
    for (;;)
    {
      return;
      c.write("\n");
      int m = 1;
      int n = e;
      while (m < n)
      {
        c.write(f);
        m += 1;
      }
    }
  }
  
  public JsonWriter beginArray()
  {
    b();
    return a(1, "[");
  }
  
  public JsonWriter beginObject()
  {
    b();
    return a(3, "{");
  }
  
  public void close()
  {
    c.close();
    int m = e;
    if ((m > 1) || ((m == 1) && (d[(m - 1)] != 7))) {
      throw new IOException("Incomplete document");
    }
    e = 0;
  }
  
  public JsonWriter endArray()
  {
    return a(1, 2, "]");
  }
  
  public JsonWriter endObject()
  {
    return a(3, 5, "}");
  }
  
  public void flush()
  {
    if (e == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    c.flush();
  }
  
  public final boolean getSerializeNulls()
  {
    return k;
  }
  
  public final boolean isHtmlSafe()
  {
    return i;
  }
  
  public boolean isLenient()
  {
    return h;
  }
  
  public JsonWriter name(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("name == null");
    }
    if (j != null) {
      throw new IllegalStateException();
    }
    if (e == 0) {
      throw new IllegalStateException("JsonWriter is closed.");
    }
    j = paramString;
    return this;
  }
  
  public JsonWriter nullValue()
  {
    if (j != null)
    {
      if (k) {
        b();
      }
    }
    else
    {
      a(false);
      c.write("null");
      return this;
    }
    j = null;
    return this;
  }
  
  public final void setHtmlSafe(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public final void setIndent(String paramString)
  {
    if (paramString.length() == 0)
    {
      f = null;
      g = ":";
      return;
    }
    f = paramString;
    g = ": ";
  }
  
  public final void setLenient(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public final void setSerializeNulls(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public JsonWriter value(double paramDouble)
  {
    if ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble))) {
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramDouble);
    }
    b();
    a(false);
    c.append(Double.toString(paramDouble));
    return this;
  }
  
  public JsonWriter value(long paramLong)
  {
    b();
    a(false);
    c.write(Long.toString(paramLong));
    return this;
  }
  
  public JsonWriter value(Number paramNumber)
  {
    if (paramNumber == null) {
      return nullValue();
    }
    b();
    String str = paramNumber.toString();
    if ((!h) && ((str.equals("-Infinity")) || (str.equals("Infinity")) || (str.equals("NaN")))) {
      throw new IllegalArgumentException("Numeric values must be finite, but was " + paramNumber);
    }
    a(false);
    c.append(str);
    return this;
  }
  
  public JsonWriter value(String paramString)
  {
    if (paramString == null) {
      return nullValue();
    }
    b();
    a(false);
    a(paramString);
    return this;
  }
  
  public JsonWriter value(boolean paramBoolean)
  {
    b();
    a(false);
    Writer localWriter = c;
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      localWriter.write(str);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.gson.stream.JsonWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */