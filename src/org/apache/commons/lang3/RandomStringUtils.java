package org.apache.commons.lang3;

import java.util.Random;

public class RandomStringUtils
{
  private static final Random RANDOM = new Random();
  
  public static String random(int paramInt)
  {
    return random(paramInt, false, false);
  }
  
  public static String random(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    return random(paramInt1, paramInt2, paramInt3, paramBoolean1, paramBoolean2, null, RANDOM);
  }
  
  public static String random(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, char... paramVarArgs)
  {
    return random(paramInt1, paramInt2, paramInt3, paramBoolean1, paramBoolean2, paramVarArgs, RANDOM);
  }
  
  public static String random(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, char[] paramArrayOfChar, Random paramRandom)
  {
    if (paramInt1 == 0) {
      return "";
    }
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Requested random string length " + paramInt1 + " is less than 0.");
    }
    if ((paramArrayOfChar != null) && (paramArrayOfChar.length == 0)) {
      throw new IllegalArgumentException("The chars array must not be empty");
    }
    int k;
    int m;
    char[] arrayOfChar;
    if ((paramInt2 == 0) && (paramInt3 == 0)) {
      if (paramArrayOfChar != null)
      {
        k = paramArrayOfChar.length;
        m = paramInt2;
        arrayOfChar = new char[paramInt1];
        paramInt3 = k - m;
      }
    }
    for (;;)
    {
      label93:
      paramInt2 = paramInt1 - 1;
      if (paramInt1 == 0) {
        break label374;
      }
      int i;
      if (paramArrayOfChar == null) {
        i = (char)(paramRandom.nextInt(paramInt3) + m);
      }
      for (;;)
      {
        if (((paramBoolean1) && (Character.isLetter(i))) || ((paramBoolean2) && (Character.isDigit(i))) || ((!paramBoolean1) && (!paramBoolean2)))
        {
          int j;
          if ((i >= 56320) && (i <= 57343))
          {
            if (paramInt2 == 0) {
              break label367;
            }
            arrayOfChar[paramInt2] = i;
            paramInt1 = paramInt2 - 1;
            arrayOfChar[paramInt1] = ((char)(paramRandom.nextInt(128) + 55296));
            break label93;
            if ((!paramBoolean1) && (!paramBoolean2))
            {
              k = Integer.MAX_VALUE;
              m = paramInt2;
              break;
            }
            k = 123;
            m = 32;
            break;
            m = paramInt2;
            k = paramInt3;
            if (paramInt3 > paramInt2) {
              break;
            }
            throw new IllegalArgumentException("Parameter end (" + paramInt3 + ") must be greater than start (" + paramInt2 + ")");
            j = paramArrayOfChar[(paramRandom.nextInt(paramInt3) + m)];
            continue;
          }
          if ((j >= 55296) && (j <= 56191))
          {
            if (paramInt2 == 0) {
              break label367;
            }
            arrayOfChar[paramInt2] = ((char)(paramRandom.nextInt(128) + 56320));
            paramInt1 = paramInt2 - 1;
            arrayOfChar[paramInt1] = j;
            break label93;
          }
          if ((j < 56192) || (j > 56319))
          {
            arrayOfChar[paramInt2] = j;
            paramInt1 = paramInt2;
            break label93;
          }
        }
      }
      label367:
      paramInt1 = paramInt2 + 1;
    }
    label374:
    return new String(arrayOfChar);
  }
  
  public static String random(int paramInt, String paramString)
  {
    if (paramString == null) {
      return random(paramInt, 0, 0, false, false, null, RANDOM);
    }
    return random(paramInt, paramString.toCharArray());
  }
  
  public static String random(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    return random(paramInt, 0, 0, paramBoolean1, paramBoolean2);
  }
  
  public static String random(int paramInt, char... paramVarArgs)
  {
    if (paramVarArgs == null) {
      return random(paramInt, 0, 0, false, false, null, RANDOM);
    }
    return random(paramInt, 0, paramVarArgs.length, false, false, paramVarArgs, RANDOM);
  }
  
  public static String randomAlphabetic(int paramInt)
  {
    return random(paramInt, true, false);
  }
  
  public static String randomAlphanumeric(int paramInt)
  {
    return random(paramInt, true, true);
  }
  
  public static String randomAscii(int paramInt)
  {
    return random(paramInt, 32, 127, false, false);
  }
  
  public static String randomNumeric(int paramInt)
  {
    return random(paramInt, false, true);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.RandomStringUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */