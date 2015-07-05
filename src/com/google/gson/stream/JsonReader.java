package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class JsonReader
  implements Closeable
{
  private static final char[] a = ")]}'\n".toCharArray();
  private final Reader b;
  private boolean c = false;
  private final char[] d = new char['Ѐ'];
  private int e = 0;
  private int f = 0;
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private long j;
  private int k;
  private String l;
  private int[] m = new int[32];
  private int n = 0;
  
  static
  {
    JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess()
    {
      public final void promoteNameToValue(JsonReader paramAnonymousJsonReader)
      {
        if ((paramAnonymousJsonReader instanceof JsonTreeReader))
        {
          ((JsonTreeReader)paramAnonymousJsonReader).promoteNameToValue();
          return;
        }
        int j = JsonReader.a(paramAnonymousJsonReader);
        int i = j;
        if (j == 0) {
          i = JsonReader.b(paramAnonymousJsonReader);
        }
        if (i == 13)
        {
          JsonReader.a(paramAnonymousJsonReader, 9);
          return;
        }
        if (i == 12)
        {
          JsonReader.a(paramAnonymousJsonReader, 8);
          return;
        }
        if (i == 14)
        {
          JsonReader.a(paramAnonymousJsonReader, 10);
          return;
        }
        throw new IllegalStateException("Expected a name but was " + paramAnonymousJsonReader.peek() + "  at line " + JsonReader.c(paramAnonymousJsonReader) + " column " + JsonReader.d(paramAnonymousJsonReader));
      }
    };
  }
  
  public JsonReader(Reader paramReader)
  {
    int[] arrayOfInt = m;
    int i1 = n;
    n = (i1 + 1);
    arrayOfInt[i1] = 6;
    if (paramReader == null) {
      throw new NullPointerException("in == null");
    }
    b = paramReader;
  }
  
  private int a()
  {
    int i2 = m[(n - 1)];
    int i1;
    if (i2 == 1)
    {
      m[(n - 1)] = 2;
      switch (a(true))
      {
      default: 
        e -= 1;
        if (n == 1) {
          f();
        }
        i1 = b();
        if (i1 == 0) {
          break;
        }
      }
    }
    label618:
    do
    {
      return i1;
      if (i2 == 2)
      {
        switch (a(true))
        {
        case 44: 
        default: 
          throw a("Unterminated array");
        case 93: 
          i = 4;
          return 4;
        }
        f();
        break;
      }
      if ((i2 == 3) || (i2 == 5))
      {
        m[(n - 1)] = 4;
        if (i2 == 5) {
          switch (a(true))
          {
          default: 
            throw a("Unterminated object");
          case 125: 
            i = 2;
            return 2;
          case 59: 
            f();
          }
        }
        i1 = a(true);
        switch (i1)
        {
        default: 
          f();
          e -= 1;
          if (a((char)i1))
          {
            i = 14;
            return 14;
          }
          break;
        case 34: 
          i = 13;
          return 13;
        case 39: 
          f();
          i = 12;
          return 12;
        case 125: 
          if (i2 != 5)
          {
            i = 2;
            return 2;
          }
          throw a("Expected name");
        }
        throw a("Expected name");
      }
      if (i2 == 4)
      {
        m[(n - 1)] = 5;
        switch (a(true))
        {
        case 58: 
        case 59: 
        case 60: 
        default: 
          throw a("Expected ':'");
        }
        f();
        if (((e >= f) && (!b(1))) || (d[e] != '>')) {
          break;
        }
        e += 1;
        break;
      }
      if (i2 == 6)
      {
        if (c)
        {
          a(true);
          e -= 1;
          if ((e + a.length <= f) || (b(a.length)))
          {
            i1 = 0;
            while (i1 < a.length)
            {
              if (d[(e + i1)] != a[i1]) {
                break label618;
              }
              i1 += 1;
            }
            e += a.length;
          }
        }
        m[(n - 1)] = 7;
        break;
      }
      if (i2 == 7)
      {
        if (a(false) == -1)
        {
          i = 17;
          return 17;
        }
        f();
        e -= 1;
        break;
      }
      if (i2 != 8) {
        break;
      }
      throw new IllegalStateException("JsonReader is closed");
      if (i2 == 1)
      {
        i = 4;
        return 4;
      }
      if ((i2 == 1) || (i2 == 2))
      {
        f();
        e -= 1;
        i = 7;
        return 7;
      }
      throw a("Unexpected value");
      f();
      i = 8;
      return 8;
      if (n == 1) {
        f();
      }
      i = 9;
      return 9;
      i = 3;
      return 3;
      i = 1;
      return 1;
      i2 = c();
      i1 = i2;
    } while (i2 != 0);
    if (!a(d[e])) {
      throw a("Expected value");
    }
    f();
    i = 10;
    return 10;
  }
  
  private int a(boolean paramBoolean)
  {
    char[] arrayOfChar = d;
    int i1 = e;
    int i2 = f;
    for (;;)
    {
      int i3 = i2;
      int i4 = i1;
      if (i1 == i2)
      {
        e = i1;
        if (b(1))
        {
          i4 = e;
          i3 = f;
        }
      }
      else
      {
        i1 = i4 + 1;
        i2 = arrayOfChar[i4];
        if (i2 == 10)
        {
          g += 1;
          h = i1;
          i2 = i3;
          continue;
        }
        if ((i2 == 32) || (i2 == 13) || (i2 == 9)) {
          break label468;
        }
        if (i2 == 47)
        {
          e = i1;
          if (i1 == i3)
          {
            e -= 1;
            boolean bool = b(2);
            e += 1;
            if (!bool) {
              return i2;
            }
          }
          f();
          switch (arrayOfChar[e])
          {
          default: 
            return i2;
          case '*': 
            e += 1;
            while ((e + "*/".length() <= f) || (b("*/".length()))) {
              if (d[e] == '\n')
              {
                g += 1;
                h = (e + 1);
                e += 1;
              }
              else
              {
                i1 = 0;
                for (;;)
                {
                  if (i1 >= "*/".length()) {
                    break label322;
                  }
                  if (d[(e + i1)] != "*/".charAt(i1)) {
                    break;
                  }
                  i1 += 1;
                }
              }
            }
            for (i1 = 1; i1 == 0; i1 = 0) {
              throw a("Unterminated comment");
            }
            i1 = e + 2;
            i2 = f;
            break;
          case '/': 
            label322:
            e += 1;
            g();
            i1 = e;
            i2 = f;
            break;
          }
        }
        if (i2 == 35)
        {
          e = i1;
          f();
          g();
          i1 = e;
          i2 = f;
          continue;
        }
        e = i1;
        return i2;
      }
      if (paramBoolean) {
        throw new EOFException("End of input at line " + (g + 1) + " column " + e());
      }
      return -1;
      label468:
      i2 = i3;
    }
  }
  
  private IOException a(String paramString)
  {
    throw new MalformedJsonException(paramString + " at line " + (g + 1) + " column " + e());
  }
  
  private void a(int paramInt)
  {
    if (n == m.length)
    {
      arrayOfInt = new int[n * 2];
      System.arraycopy(m, 0, arrayOfInt, 0, n);
      m = arrayOfInt;
    }
    int[] arrayOfInt = m;
    int i1 = n;
    n = (i1 + 1);
    arrayOfInt[i1] = paramInt;
  }
  
  private boolean a(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      return true;
    case '#': 
    case '/': 
    case ';': 
    case '=': 
    case '\\': 
      f();
    }
    return false;
  }
  
  private int b()
  {
    int i1 = d[e];
    String str2;
    String str1;
    int i3;
    int i2;
    if ((i1 == 116) || (i1 == 84))
    {
      str2 = "true";
      str1 = "TRUE";
      i1 = 5;
      i3 = str2.length();
      i2 = 1;
    }
    for (;;)
    {
      if (i2 >= i3) {
        break label168;
      }
      if ((e + i2 >= f) && (!b(i2 + 1)))
      {
        return 0;
        if ((i1 == 102) || (i1 == 70))
        {
          str2 = "false";
          str1 = "FALSE";
          i1 = 6;
          break;
        }
        if ((i1 == 110) || (i1 == 78))
        {
          str2 = "null";
          str1 = "NULL";
          i1 = 7;
          break;
        }
        return 0;
      }
      int i4 = d[(e + i2)];
      if ((i4 != str2.charAt(i2)) && (i4 != str1.charAt(i2))) {
        return 0;
      }
      i2 += 1;
    }
    label168:
    if (((e + i3 < f) || (b(i3 + 1))) && (a(d[(e + i3)]))) {
      return 0;
    }
    e += i3;
    i = i1;
    return i1;
  }
  
  private String b(char paramChar)
  {
    char[] arrayOfChar = d;
    StringBuilder localStringBuilder = new StringBuilder();
    label144:
    do
    {
      char c2 = e;
      int i1 = f;
      char c3;
      for (char c1 = c2;; c1 = c3)
      {
        if (c1 >= i1) {
          break label144;
        }
        c3 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          e = c3;
          localStringBuilder.append(arrayOfChar, c2, c3 - c2 - 1);
          return localStringBuilder.toString();
        }
        if (c1 == '\\')
        {
          e = c3;
          localStringBuilder.append(arrayOfChar, c2, c3 - c2 - 1);
          localStringBuilder.append(h());
          break;
        }
        if (c1 == '\n')
        {
          g += 1;
          h = c3;
        }
      }
      localStringBuilder.append(arrayOfChar, c2, c1 - c2);
      e = c1;
    } while (b(1));
    throw a("Unterminated string");
  }
  
  private boolean b(int paramInt)
  {
    boolean bool2 = false;
    char[] arrayOfChar = d;
    h -= e;
    if (f != e)
    {
      f -= e;
      System.arraycopy(arrayOfChar, e, arrayOfChar, 0, f);
    }
    for (;;)
    {
      e = 0;
      int i1;
      do
      {
        i1 = b.read(arrayOfChar, f, arrayOfChar.length - f);
        bool1 = bool2;
        if (i1 == -1) {
          break;
        }
        f = (i1 + f);
        i1 = paramInt;
        if (g == 0)
        {
          i1 = paramInt;
          if (h == 0)
          {
            i1 = paramInt;
            if (f > 0)
            {
              i1 = paramInt;
              if (arrayOfChar[0] == 65279)
              {
                e += 1;
                h += 1;
                i1 = paramInt + 1;
              }
            }
          }
        }
        paramInt = i1;
      } while (f < i1);
      boolean bool1 = true;
      return bool1;
      f = 0;
    }
  }
  
  private int c()
  {
    char[] arrayOfChar = d;
    int i7 = e;
    int i5 = f;
    long l1 = 0L;
    int i1 = 0;
    int i2 = 1;
    int i3 = 0;
    int i4 = 0;
    int i8 = i5;
    int i6 = i8;
    i5 = i7;
    char c1;
    if (i7 + i4 == i8)
    {
      if (i4 == arrayOfChar.length) {
        return 0;
      }
      if (b(i4 + 1))
      {
        i5 = e;
        i6 = f;
      }
    }
    else
    {
      c1 = arrayOfChar[(i5 + i4)];
      switch (c1)
      {
      default: 
        if ((c1 < '0') || (c1 > '9'))
        {
          if (!a(c1)) {
            break label460;
          }
          return 0;
        }
        break;
      case '-': 
        if (i3 == 0)
        {
          i1 = 1;
          i3 = 1;
        }
        break;
      }
    }
    for (;;)
    {
      int i9 = i4 + 1;
      i4 = i3;
      i8 = i6;
      i7 = i5;
      i3 = i1;
      i1 = i4;
      i4 = i9;
      break;
      if (i3 == 5)
      {
        i7 = 6;
        i3 = i1;
        i1 = i7;
      }
      else
      {
        return 0;
        if (i3 == 5)
        {
          i7 = 6;
          i3 = i1;
          i1 = i7;
        }
        else
        {
          return 0;
          if ((i3 == 2) || (i3 == 4))
          {
            i7 = 5;
            i3 = i1;
            i1 = i7;
          }
          else
          {
            return 0;
            if (i3 == 2)
            {
              i7 = 3;
              i3 = i1;
              i1 = i7;
            }
            else
            {
              return 0;
              if ((i3 == 1) || (i3 == 0))
              {
                l1 = -(c1 - '0');
                i7 = 2;
                i3 = i1;
                i1 = i7;
              }
              else
              {
                if (i3 == 2)
                {
                  if (l1 == 0L) {
                    return 0;
                  }
                  long l2 = 10L * l1 - (c1 - '0');
                  if ((l1 > -922337203685477580L) || ((l1 == -922337203685477580L) && (l2 < l1))) {}
                  for (i8 = 1;; i8 = 0)
                  {
                    i7 = i1;
                    l1 = l2;
                    i2 = i8 & i2;
                    i1 = i3;
                    i3 = i7;
                    break;
                  }
                }
                if (i3 == 3)
                {
                  i7 = 4;
                  i3 = i1;
                  i1 = i7;
                }
                else if ((i3 == 5) || (i3 == 6))
                {
                  i7 = 7;
                  i3 = i1;
                  i1 = i7;
                  continue;
                  label460:
                  if ((i3 == 2) && (i2 != 0) && ((l1 != Long.MIN_VALUE) || (i1 != 0)))
                  {
                    if (i1 != 0) {}
                    for (;;)
                    {
                      j = l1;
                      e += i4;
                      i = 15;
                      return 15;
                      l1 = -l1;
                    }
                  }
                  if ((i3 == 2) || (i3 == 4) || (i3 == 7))
                  {
                    k = i4;
                    i = 16;
                    return 16;
                  }
                  return 0;
                }
                else
                {
                  i7 = i1;
                  i1 = i3;
                  i3 = i7;
                }
              }
            }
          }
        }
      }
    }
  }
  
  private void c(char paramChar)
  {
    char[] arrayOfChar = d;
    label88:
    do
    {
      char c1 = e;
      char c3 = f;
      for (;;)
      {
        if (c1 >= c3) {
          break label88;
        }
        char c2 = c1 + '\001';
        c1 = arrayOfChar[c1];
        if (c1 == paramChar)
        {
          e = c2;
          return;
        }
        if (c1 == '\\')
        {
          e = c2;
          h();
          break;
        }
        if (c1 == '\n')
        {
          g += 1;
          h = c2;
        }
        c1 = c2;
      }
      e = c1;
    } while (b(1));
    throw a("Unterminated string");
  }
  
  private String d()
  {
    Object localObject1 = null;
    int i1 = 0;
    for (;;)
    {
      Object localObject2;
      int i2;
      if (e + i1 < f)
      {
        localObject2 = localObject1;
        i2 = i1;
        switch (d[(e + i1)])
        {
        default: 
          i1 += 1;
          break;
        case '#': 
        case '/': 
        case ';': 
        case '=': 
        case '\\': 
          f();
          i2 = i1;
          localObject2 = localObject1;
        case '\t': 
        case '\n': 
        case '\f': 
        case '\r': 
        case ' ': 
        case ',': 
        case ':': 
        case '[': 
        case ']': 
        case '{': 
        case '}': 
          label188:
          if (localObject2 != null) {}
          break;
        }
      }
      else
      {
        for (localObject1 = new String(d, e, i2);; localObject1 = ((StringBuilder)localObject2).toString())
        {
          e = (i2 + e);
          return (String)localObject1;
          if (i1 < d.length)
          {
            localObject2 = localObject1;
            i2 = i1;
            if (!b(i1 + 1)) {
              break label188;
            }
            break;
          }
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new StringBuilder();
          }
          ((StringBuilder)localObject2).append(d, e, i1);
          e = (i1 + e);
          if (b(1)) {
            break label327;
          }
          i2 = 0;
          break label188;
          ((StringBuilder)localObject2).append(d, e, i2);
        }
        label327:
        i1 = 0;
        localObject1 = localObject2;
      }
    }
  }
  
  private int e()
  {
    return e - h + 1;
  }
  
  private void f()
  {
    if (!c) {
      throw a("Use JsonReader.setLenient(true) to accept malformed JSON");
    }
  }
  
  private void g()
  {
    int i1;
    do
    {
      if ((e < f) || (b(1)))
      {
        char[] arrayOfChar = d;
        i1 = e;
        e = (i1 + 1);
        i1 = arrayOfChar[i1];
        if (i1 == 10)
        {
          g += 1;
          h = e;
        }
      }
      else
      {
        return;
      }
    } while (i1 != 13);
  }
  
  private char h()
  {
    if ((e == f) && (!b(1))) {
      throw a("Unterminated escape sequence");
    }
    char[] arrayOfChar = d;
    int i1 = e;
    e = (i1 + 1);
    char c1 = arrayOfChar[i1];
    switch (c1)
    {
    default: 
      return c1;
    case 'u': 
      if ((e + 4 > f) && (!b(4))) {
        throw a("Unterminated escape sequence");
      }
      int i2 = e;
      c1 = '\000';
      i1 = i2;
      if (i1 < i2 + 4)
      {
        int i3 = d[i1];
        int i4 = (char)(c1 << '\004');
        if ((i3 >= 48) && (i3 <= 57)) {
          c1 = (char)(i4 + (i3 - 48));
        }
        for (;;)
        {
          i1 += 1;
          break;
          if ((i3 >= 97) && (i3 <= 102))
          {
            c1 = (char)(i4 + (i3 - 97 + 10));
          }
          else
          {
            if ((i3 < 65) || (i3 > 70)) {
              break label267;
            }
            c1 = (char)(i4 + (i3 - 65 + 10));
          }
        }
        throw new NumberFormatException("\\u" + new String(d, e, 4));
      }
      e += 4;
      return c1;
    case 't': 
      return '\t';
    case 'b': 
      return '\b';
    case 'n': 
      return '\n';
    case 'r': 
      return '\r';
    case 'f': 
      label267:
      return '\f';
    }
    g += 1;
    h = e;
    return c1;
  }
  
  public void beginArray()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 3)
    {
      a(1);
      i = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + " at line " + (g + 1) + " column " + e());
  }
  
  public void beginObject()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 1)
    {
      a(3);
      i = 0;
      return;
    }
    throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + " at line " + (g + 1) + " column " + e());
  }
  
  public void close()
  {
    i = 0;
    m[0] = 8;
    n = 1;
    b.close();
  }
  
  public void endArray()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 4)
    {
      n -= 1;
      i = 0;
      return;
    }
    throw new IllegalStateException("Expected END_ARRAY but was " + peek() + " at line " + (g + 1) + " column " + e());
  }
  
  public void endObject()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 2)
    {
      n -= 1;
      i = 0;
      return;
    }
    throw new IllegalStateException("Expected END_OBJECT but was " + peek() + " at line " + (g + 1) + " column " + e());
  }
  
  public boolean hasNext()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    return (i1 != 2) && (i1 != 4);
  }
  
  public final boolean isLenient()
  {
    return c;
  }
  
  public boolean nextBoolean()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 5)
    {
      i = 0;
      return true;
    }
    if (i1 == 6)
    {
      i = 0;
      return false;
    }
    throw new IllegalStateException("Expected a boolean but was " + peek() + " at line " + (g + 1) + " column " + e());
  }
  
  public double nextDouble()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 15)
    {
      i = 0;
      return j;
    }
    if (i1 == 16)
    {
      l = new String(d, e, k);
      e += k;
    }
    double d1;
    do
    {
      for (;;)
      {
        i = 11;
        d1 = Double.parseDouble(l);
        if ((c) || ((!Double.isNaN(d1)) && (!Double.isInfinite(d1)))) {
          break label289;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + d1 + " at line " + (g + 1) + " column " + e());
        if ((i1 == 8) || (i1 == 9))
        {
          if (i1 == 8) {}
          for (char c1 = '\'';; c1 = '"')
          {
            l = b(c1);
            break;
          }
        }
        if (i1 != 10) {
          break;
        }
        l = d();
      }
    } while (i1 == 11);
    throw new IllegalStateException("Expected a double but was " + peek() + " at line " + (g + 1) + " column " + e());
    label289:
    l = null;
    i = 0;
    return d1;
  }
  
  public int nextInt()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 15)
    {
      i1 = (int)j;
      if (j != i1) {
        throw new NumberFormatException("Expected an int but was " + j + " at line " + (g + 1) + " column " + e());
      }
      i = 0;
      return i1;
    }
    if (i1 == 16)
    {
      l = new String(d, e, k);
      e += k;
      i = 11;
      double d1 = Double.parseDouble(l);
      i1 = (int)d1;
      if (i1 != d1) {
        throw new NumberFormatException("Expected an int but was " + l + " at line " + (g + 1) + " column " + e());
      }
    }
    else
    {
      if ((i1 == 8) || (i1 == 9))
      {
        if (i1 == 8) {}
        for (char c1 = '\'';; c1 = '"')
        {
          l = b(c1);
          try
          {
            i1 = Integer.parseInt(l);
            i = 0;
            return i1;
          }
          catch (NumberFormatException localNumberFormatException) {}
          break;
        }
      }
      throw new IllegalStateException("Expected an int but was " + peek() + " at line " + (g + 1) + " column " + e());
    }
    l = null;
    i = 0;
    return i1;
  }
  
  public long nextLong()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 15)
    {
      i = 0;
      return j;
    }
    long l1;
    if (i1 == 16)
    {
      l = new String(d, e, k);
      e += k;
      i = 11;
      double d1 = Double.parseDouble(l);
      l1 = d1;
      if (l1 != d1) {
        throw new NumberFormatException("Expected a long but was " + l + " at line " + (g + 1) + " column " + e());
      }
    }
    else
    {
      if ((i1 == 8) || (i1 == 9))
      {
        if (i1 == 8) {}
        for (char c1 = '\'';; c1 = '"')
        {
          l = b(c1);
          try
          {
            l1 = Long.parseLong(l);
            i = 0;
            return l1;
          }
          catch (NumberFormatException localNumberFormatException) {}
          break;
        }
      }
      throw new IllegalStateException("Expected a long but was " + peek() + " at line " + (g + 1) + " column " + e());
    }
    l = null;
    i = 0;
    return l1;
  }
  
  public String nextName()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    String str;
    if (i1 == 14) {
      str = d();
    }
    for (;;)
    {
      i = 0;
      return str;
      if (i1 == 12)
      {
        str = b('\'');
      }
      else
      {
        if (i1 != 13) {
          break;
        }
        str = b('"');
      }
    }
    throw new IllegalStateException("Expected a name but was " + peek() + " at line " + (g + 1) + " column " + e());
  }
  
  public void nextNull()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    if (i1 == 7)
    {
      i = 0;
      return;
    }
    throw new IllegalStateException("Expected null but was " + peek() + " at line " + (g + 1) + " column " + e());
  }
  
  public String nextString()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    String str;
    if (i1 == 10) {
      str = d();
    }
    for (;;)
    {
      i = 0;
      return str;
      if (i1 == 8)
      {
        str = b('\'');
      }
      else if (i1 == 9)
      {
        str = b('"');
      }
      else if (i1 == 11)
      {
        str = l;
        l = null;
      }
      else if (i1 == 15)
      {
        str = Long.toString(j);
      }
      else
      {
        if (i1 != 16) {
          break;
        }
        str = new String(d, e, k);
        e += k;
      }
    }
    throw new IllegalStateException("Expected a string but was " + peek() + " at line " + (g + 1) + " column " + e());
  }
  
  public JsonToken peek()
  {
    int i2 = i;
    int i1 = i2;
    if (i2 == 0) {
      i1 = a();
    }
    switch (i1)
    {
    default: 
      throw new AssertionError();
    case 1: 
      return JsonToken.BEGIN_OBJECT;
    case 2: 
      return JsonToken.END_OBJECT;
    case 3: 
      return JsonToken.BEGIN_ARRAY;
    case 4: 
      return JsonToken.END_ARRAY;
    case 12: 
    case 13: 
    case 14: 
      return JsonToken.NAME;
    case 5: 
    case 6: 
      return JsonToken.BOOLEAN;
    case 7: 
      return JsonToken.NULL;
    case 8: 
    case 9: 
    case 10: 
    case 11: 
      return JsonToken.STRING;
    case 15: 
    case 16: 
      return JsonToken.NUMBER;
    }
    return JsonToken.END_DOCUMENT;
  }
  
  public final void setLenient(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void skipValue()
  {
    int i2 = 0;
    int i1 = i;
    int i3 = i1;
    if (i1 == 0) {
      i3 = a();
    }
    if (i3 == 3)
    {
      a(1);
      i1 = i2 + 1;
    }
    for (;;)
    {
      label32:
      i = 0;
      i2 = i1;
      if (i1 != 0) {
        break;
      }
      return;
      if (i3 == 1)
      {
        a(3);
        i1 = i2 + 1;
      }
      else if (i3 == 4)
      {
        n -= 1;
        i1 = i2 - 1;
      }
      else if (i3 == 2)
      {
        n -= 1;
        i1 = i2 - 1;
      }
      else if ((i3 == 14) || (i3 == 10))
      {
        do
        {
          i1 = 0;
          for (;;)
          {
            if (e + i1 < f) {
              switch (d[(e + i1)])
              {
              default: 
                i1 += 1;
                break;
              case '#': 
              case '/': 
              case ';': 
              case '=': 
              case '\\': 
                f();
              case '\t': 
              case '\n': 
              case '\f': 
              case '\r': 
              case ' ': 
              case ',': 
              case ':': 
              case '[': 
              case ']': 
              case '{': 
              case '}': 
                e = (i1 + e);
                i1 = i2;
                break label32;
              }
            }
          }
          e = (i1 + e);
        } while (b(1));
        i1 = i2;
      }
      else if ((i3 == 8) || (i3 == 12))
      {
        c('\'');
        i1 = i2;
      }
      else if ((i3 == 9) || (i3 == 13))
      {
        c('"');
        i1 = i2;
      }
      else
      {
        i1 = i2;
        if (i3 == 16)
        {
          e += k;
          i1 = i2;
        }
      }
    }
  }
  
  public String toString()
  {
    return getClass().getSimpleName() + " at line " + (g + 1) + " column " + e();
  }
}

/* Location:
 * Qualified Name:     com.google.gson.stream.JsonReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */