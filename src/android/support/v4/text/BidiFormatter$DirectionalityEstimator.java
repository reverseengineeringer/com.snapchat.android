package android.support.v4.text;

final class BidiFormatter$DirectionalityEstimator
{
  private static final byte[] DIR_TYPE_CACHE = new byte['܀'];
  private static final int DIR_TYPE_CACHE_SIZE = 1792;
  int charIndex;
  final boolean isHtml;
  char lastChar;
  final int length;
  final String text;
  
  static
  {
    int i = 0;
    while (i < 1792)
    {
      DIR_TYPE_CACHE[i] = Character.getDirectionality(i);
      i += 1;
    }
  }
  
  BidiFormatter$DirectionalityEstimator(String paramString)
  {
    text = paramString;
    isHtml = false;
    length = paramString.length();
  }
  
  private byte dirTypeForward()
  {
    byte b2 = 12;
    lastChar = text.charAt(charIndex);
    int j;
    if (Character.isHighSurrogate(lastChar))
    {
      j = Character.codePointAt(text, charIndex);
      charIndex += Character.charCount(j);
      b1 = Character.getDirectionality(j);
      return b1;
    }
    charIndex += 1;
    byte b1 = getCachedDirectionality(lastChar);
    if (isHtml)
    {
      label102:
      String str;
      int i;
      if (lastChar == '<')
      {
        j = charIndex;
        for (;;)
        {
          if (charIndex >= length) {
            break label233;
          }
          str = text;
          int k = charIndex;
          charIndex = (k + 1);
          lastChar = str.charAt(k);
          b1 = b2;
          if (lastChar == '>') {
            break;
          }
          if ((lastChar == '"') || (lastChar == '\''))
          {
            k = lastChar;
            if (charIndex < length)
            {
              str = text;
              int m = charIndex;
              charIndex = (m + 1);
              i = str.charAt(m);
              lastChar = i;
              if (i != k) {
                break label102;
              }
            }
          }
        }
        label233:
        charIndex = j;
        lastChar = '<';
        return 13;
      }
      if (lastChar == '&')
      {
        do
        {
          b1 = b2;
          if (charIndex >= length) {
            break;
          }
          str = text;
          j = charIndex;
          charIndex = (j + 1);
          i = str.charAt(j);
          lastChar = i;
        } while (i != 59);
        return 12;
      }
    }
    return b1;
  }
  
  static byte getCachedDirectionality(char paramChar)
  {
    if (paramChar < '܀') {
      return DIR_TYPE_CACHE[paramChar];
    }
    return Character.getDirectionality(paramChar);
  }
  
  private int getEntryDir()
  {
    charIndex = 0;
    int m = 0;
    int n = 0;
    int j = 0;
    label13:
    while ((charIndex < length) && (m == 0))
    {
      lastChar = text.charAt(charIndex);
      int k;
      if (Character.isHighSurrogate(lastChar))
      {
        k = Character.codePointAt(text, charIndex);
        charIndex += Character.charCount(k);
        k = Character.getDirectionality(k);
      }
      for (;;)
      {
        switch (k)
        {
        case 9: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
        case 10: 
        case 11: 
        case 12: 
        case 13: 
        default: 
          m = j;
          break label13;
          charIndex += 1;
          int i1 = getCachedDirectionality(lastChar);
          k = i1;
          if (isHtml)
          {
            String str;
            int i;
            if (lastChar == '<')
            {
              k = charIndex;
              for (;;)
              {
                if (charIndex >= length) {
                  break label359;
                }
                str = text;
                i1 = charIndex;
                charIndex = (i1 + 1);
                lastChar = str.charAt(i1);
                if (lastChar == '>')
                {
                  k = 12;
                  break;
                }
                if ((lastChar == '"') || (lastChar == '\''))
                {
                  i1 = lastChar;
                  do
                  {
                    if (charIndex >= length) {
                      break;
                    }
                    str = text;
                    int i2 = charIndex;
                    charIndex = (i2 + 1);
                    i = str.charAt(i2);
                    lastChar = i;
                  } while (i != i1);
                }
              }
              label359:
              charIndex = k;
              lastChar = '<';
              k = 13;
            }
            else
            {
              k = i1;
              if (lastChar == '&')
              {
                do
                {
                  if (charIndex >= length) {
                    break;
                  }
                  str = text;
                  k = charIndex;
                  charIndex = (k + 1);
                  i = str.charAt(k);
                  lastChar = i;
                } while (i != 59);
                k = 12;
              }
            }
          }
          break;
        }
      }
      j += 1;
      n = -1;
      continue;
      j += 1;
      n = 1;
      continue;
      j -= 1;
      n = 0;
      continue;
      if (j == 0) {
        return -1;
      }
      m = j;
      continue;
      if (j == 0) {
        return 1;
      }
      m = j;
    }
    if (m == 0) {
      return 0;
    }
    if (n != 0) {
      return n;
    }
    for (;;)
    {
      if (charIndex <= 0) {
        break label594;
      }
      switch (dirTypeBackward())
      {
      default: 
        break;
      case 14: 
      case 15: 
        if (m == j) {
          break;
        }
        j -= 1;
        break;
      case 16: 
      case 17: 
        if (m == j) {
          return 1;
        }
        j -= 1;
        break;
      case 18: 
        j += 1;
      }
    }
    label594:
    return 0;
  }
  
  private int getExitDir()
  {
    int m = 0;
    charIndex = length;
    int j = 0;
    int i = 0;
    for (;;)
    {
      int k = m;
      if (charIndex > 0) {}
      switch (dirTypeBackward())
      {
      case 9: 
      case 3: 
      case 4: 
      case 5: 
      case 6: 
      case 7: 
      case 8: 
      case 10: 
      case 11: 
      case 12: 
      case 13: 
      default: 
        if (j == 0) {
          j = i;
        }
        break;
      case 0: 
        if (i == 0)
        {
          k = -1;
          return k;
        }
        if (j == 0) {
          j = i;
        }
        break;
      case 14: 
      case 15: 
        if (j == i) {
          return -1;
        }
        i -= 1;
        break;
      case 1: 
      case 2: 
        if (i == 0) {
          return 1;
        }
        if (j == 0) {
          j = i;
        }
        break;
      case 16: 
      case 17: 
        if (j == i) {
          return 1;
        }
        i -= 1;
        break;
      case 18: 
        i += 1;
      }
    }
  }
  
  private byte skipEntityBackward()
  {
    int i = charIndex;
    do
    {
      if (charIndex <= 0) {
        break;
      }
      String str = text;
      int j = charIndex - 1;
      charIndex = j;
      lastChar = str.charAt(j);
      if (lastChar == '&') {
        return 12;
      }
    } while (lastChar != ';');
    charIndex = i;
    lastChar = ';';
    return 13;
  }
  
  private byte skipEntityForward()
  {
    char c;
    do
    {
      if (charIndex >= length) {
        break;
      }
      String str = text;
      int i = charIndex;
      charIndex = (i + 1);
      c = str.charAt(i);
      lastChar = c;
    } while (c != ';');
    return 12;
  }
  
  private byte skipTagBackward()
  {
    int j = charIndex;
    for (;;)
    {
      if (charIndex <= 0) {
        break label132;
      }
      String str = text;
      int k = charIndex - 1;
      charIndex = k;
      lastChar = str.charAt(k);
      if (lastChar == '<') {
        return 12;
      }
      if (lastChar == '>') {
        break label132;
      }
      if ((lastChar == '"') || (lastChar == '\''))
      {
        k = lastChar;
        if (charIndex > 0)
        {
          str = text;
          int m = charIndex - 1;
          charIndex = m;
          int i = str.charAt(m);
          lastChar = i;
          if (i != k) {
            break;
          }
        }
      }
    }
    label132:
    charIndex = j;
    lastChar = '>';
    return 13;
  }
  
  private byte skipTagForward()
  {
    int j = charIndex;
    for (;;)
    {
      if (charIndex >= length) {
        break label131;
      }
      String str = text;
      int k = charIndex;
      charIndex = (k + 1);
      lastChar = str.charAt(k);
      if (lastChar == '>') {
        return 12;
      }
      if ((lastChar == '"') || (lastChar == '\''))
      {
        k = lastChar;
        if (charIndex < length)
        {
          str = text;
          int m = charIndex;
          charIndex = (m + 1);
          int i = str.charAt(m);
          lastChar = i;
          if (i != k) {
            break;
          }
        }
      }
    }
    label131:
    charIndex = j;
    lastChar = '<';
    return 13;
  }
  
  final byte dirTypeBackward()
  {
    byte b2 = 12;
    lastChar = text.charAt(charIndex - 1);
    int j;
    if (Character.isLowSurrogate(lastChar))
    {
      j = Character.codePointBefore(text, charIndex);
      charIndex -= Character.charCount(j);
      b1 = Character.getDirectionality(j);
      return b1;
    }
    charIndex -= 1;
    byte b1 = getCachedDirectionality(lastChar);
    if (isHtml)
    {
      label104:
      String str;
      int k;
      if (lastChar == '>')
      {
        j = charIndex;
        for (;;)
        {
          if (charIndex <= 0) {
            break label236;
          }
          str = text;
          k = charIndex - 1;
          charIndex = k;
          lastChar = str.charAt(k);
          b1 = b2;
          if (lastChar == '<') {
            break;
          }
          if (lastChar == '>') {
            break label236;
          }
          if ((lastChar == '"') || (lastChar == '\''))
          {
            k = lastChar;
            if (charIndex > 0)
            {
              str = text;
              int m = charIndex - 1;
              charIndex = m;
              int i = str.charAt(m);
              lastChar = i;
              if (i != k) {
                break label104;
              }
            }
          }
        }
        label236:
        charIndex = j;
        lastChar = '>';
        return 13;
      }
      if (lastChar == ';')
      {
        j = charIndex;
        do
        {
          if (charIndex <= 0) {
            break label324;
          }
          str = text;
          k = charIndex - 1;
          charIndex = k;
          lastChar = str.charAt(k);
          b1 = b2;
          if (lastChar == '&') {
            break;
          }
        } while (lastChar != ';');
        label324:
        charIndex = j;
        lastChar = ';';
        return 13;
      }
    }
    return b1;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.text.BidiFormatter.DirectionalityEstimator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */