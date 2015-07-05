import java.util.Arrays;

@cc
@cd
public abstract class cg
  implements cl<Character>
{
  public static final cg a = new cg()
  {
    public final boolean a(char paramAnonymousChar)
    {
      switch (paramAnonymousChar)
      {
      default: 
        if ((paramAnonymousChar < ' ') || (paramAnonymousChar > ' ')) {
          break;
        }
      case '\t': 
      case '\n': 
      case '\013': 
      case '\f': 
      case '\r': 
      case ' ': 
      case '': 
      case ' ': 
      case ' ': 
      case ' ': 
      case ' ': 
      case '　': 
        return true;
      case ' ': 
        return false;
      }
      return false;
    }
    
    public final String toString()
    {
      return "CharMatcher.BREAKING_WHITESPACE";
    }
  };
  public static final cg b = a('\000', '', "CharMatcher.ASCII");
  public static final cg c = new cg.c("CharMatcher.DIGIT", "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray(), q.toCharArray());
  public static final cg d = new cg("CharMatcher.JAVA_DIGIT")
  {
    public final boolean a(char paramAnonymousChar)
    {
      return Character.isDigit(paramAnonymousChar);
    }
  };
  public static final cg e = new cg("CharMatcher.JAVA_LETTER")
  {
    public final boolean a(char paramAnonymousChar)
    {
      return Character.isLetter(paramAnonymousChar);
    }
  };
  public static final cg f = new cg("CharMatcher.JAVA_LETTER_OR_DIGIT")
  {
    public final boolean a(char paramAnonymousChar)
    {
      return Character.isLetterOrDigit(paramAnonymousChar);
    }
  };
  public static final cg g = new cg("CharMatcher.JAVA_UPPER_CASE")
  {
    public final boolean a(char paramAnonymousChar)
    {
      return Character.isUpperCase(paramAnonymousChar);
    }
  };
  public static final cg h = new cg("CharMatcher.JAVA_LOWER_CASE")
  {
    public final boolean a(char paramAnonymousChar)
    {
      return Character.isLowerCase(paramAnonymousChar);
    }
  };
  public static final cg i = a('\000', '\037').a(a('', '')).a("CharMatcher.JAVA_ISO_CONTROL");
  public static final cg j = new cg.c("CharMatcher.INVISIBLE", "\000­؀؜۝܏ ᠎   ⁦⁧⁨⁩⁪　?﻿￹￺".toCharArray(), "  ­؄؜۝܏ ᠎‏ ⁤⁦⁧⁨⁩⁯　﻿￹￻".toCharArray());
  public static final cg k = new cg.c("CharMatcher.SINGLE_WIDTH", "\000־א׳؀ݐ฀Ḁ℀ﭐﹰ｡".toCharArray(), "ӹ־ת״ۿݿ๿₯℺﷿﻿ￜ".toCharArray());
  public static final cg l = new cg.a("CharMatcher.ANY")
  {
    public final cg a(cg paramAnonymouscg)
    {
      ck.a(paramAnonymouscg);
      return this;
    }
    
    public final boolean a(char paramAnonymousChar)
    {
      return true;
    }
  };
  public static final cg m = new cg.a("CharMatcher.NONE")
  {
    public final cg a(cg paramAnonymouscg)
    {
      return (cg)ck.a(paramAnonymouscg);
    }
    
    public final boolean a(char paramAnonymousChar)
    {
      return false;
    }
  };
  static final int o = Integer.numberOfLeadingZeros(31);
  public static final cg p = new cg.a("WHITESPACE")
  {
    public final boolean a(char paramAnonymousChar)
    {
      return " 　\r   　 \013　   　 \t     \f 　 　　 \n 　".charAt(1682554634 * paramAnonymousChar >>> o) == paramAnonymousChar;
    }
  };
  private static final String q;
  final String n;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder(31);
    int i1 = 0;
    while (i1 < 31)
    {
      localStringBuilder.append((char)("0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".charAt(i1) + '\t'));
      i1 += 1;
    }
    q = localStringBuilder.toString();
  }
  
  public cg()
  {
    n = super.toString();
  }
  
  cg(String paramString)
  {
    n = paramString;
  }
  
  private static cg a(char paramChar1, char paramChar2)
  {
    if (paramChar2 >= paramChar1) {}
    for (boolean bool = true;; bool = false)
    {
      ck.a(bool);
      String str1 = String.valueOf(String.valueOf(b(paramChar1)));
      String str2 = String.valueOf(String.valueOf(b(paramChar2)));
      return a(paramChar1, paramChar2, str1.length() + 27 + str2.length() + "CharMatcher.inRange('" + str1 + "', '" + str2 + "')");
    }
  }
  
  private static cg a(final char paramChar1, final char paramChar2, String paramString)
  {
    new cg.a(paramString)
    {
      public final boolean a(char paramAnonymousChar)
      {
        return (paramChar1 <= paramAnonymousChar) && (paramAnonymousChar <= paramChar2);
      }
    };
  }
  
  private static String b(char paramChar)
  {
    char[] arrayOfChar = new char[6];
    char[] tmp6_5 = arrayOfChar;
    tmp6_5[0] = 92;
    char[] tmp11_6 = tmp6_5;
    tmp11_6[1] = 117;
    char[] tmp16_11 = tmp11_6;
    tmp16_11[2] = 0;
    char[] tmp21_16 = tmp16_11;
    tmp21_16[3] = 0;
    char[] tmp26_21 = tmp21_16;
    tmp26_21[4] = 0;
    char[] tmp31_26 = tmp26_21;
    tmp31_26[5] = 0;
    tmp31_26;
    char c1 = '\000';
    int i1 = paramChar;
    paramChar = c1;
    while (paramChar < '\004')
    {
      arrayOfChar[('\005' - paramChar)] = "0123456789ABCDEF".charAt(i1 & 0xF);
      i1 = (char)(i1 >> 4);
      paramChar += '\001';
    }
    return String.copyValueOf(arrayOfChar);
  }
  
  public cg a(cg paramcg)
  {
    return new cg.b(this, (cg)ck.a(paramcg));
  }
  
  cg a(String paramString)
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract boolean a(char paramChar);
  
  @Deprecated
  public final boolean a(Character paramCharacter)
  {
    return a(paramCharacter.charValue());
  }
  
  public String toString()
  {
    return n;
  }
  
  static abstract class a
    extends cg
  {
    a(String paramString)
    {
      super();
    }
  }
  
  static final class b
    extends cg
  {
    final cg q;
    final cg r;
    
    b(cg paramcg1, cg paramcg2)
    {
      this(paramcg1, paramcg2, str1.length() + 18 + str2.length() + "CharMatcher.or(" + str1 + ", " + str2 + ")");
    }
    
    private b(cg paramcg1, cg paramcg2, String paramString)
    {
      super();
      q = ((cg)ck.a(paramcg1));
      r = ((cg)ck.a(paramcg2));
    }
    
    final cg a(String paramString)
    {
      return new b(q, r, paramString);
    }
    
    public final boolean a(char paramChar)
    {
      return (q.a(paramChar)) || (r.a(paramChar));
    }
  }
  
  static final class c
    extends cg
  {
    private final char[] q;
    private final char[] r;
    
    c(String paramString, char[] paramArrayOfChar1, char[] paramArrayOfChar2)
    {
      super();
      q = paramArrayOfChar1;
      r = paramArrayOfChar2;
      int i;
      if (paramArrayOfChar1.length == paramArrayOfChar2.length)
      {
        bool = true;
        ck.a(bool);
        i = 0;
        label33:
        if (i >= paramArrayOfChar1.length) {
          return;
        }
        if (paramArrayOfChar1[i] > paramArrayOfChar2[i]) {
          break label104;
        }
        bool = true;
        label54:
        ck.a(bool);
        if (i + 1 < paramArrayOfChar1.length) {
          if (paramArrayOfChar2[i] >= paramArrayOfChar1[(i + 1)]) {
            break label110;
          }
        }
      }
      label104:
      label110:
      for (boolean bool = true;; bool = false)
      {
        ck.a(bool);
        i += 1;
        break label33;
        bool = false;
        break;
        bool = false;
        break label54;
      }
    }
    
    public final boolean a(char paramChar)
    {
      int i = Arrays.binarySearch(q, paramChar);
      if (i >= 0) {}
      do
      {
        return true;
        i = (i ^ 0xFFFFFFFF) - 1;
      } while ((i >= 0) && (paramChar <= r[i]));
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */