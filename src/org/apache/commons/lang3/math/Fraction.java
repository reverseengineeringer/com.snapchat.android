package org.apache.commons.lang3.math;

import java.math.BigInteger;

public final class Fraction
  extends Number
  implements Comparable<Fraction>
{
  public static final Fraction FOUR_FIFTHS = new Fraction(4, 5);
  public static final Fraction ONE;
  public static final Fraction ONE_FIFTH;
  public static final Fraction ONE_HALF;
  public static final Fraction ONE_QUARTER;
  public static final Fraction ONE_THIRD;
  public static final Fraction THREE_FIFTHS;
  public static final Fraction THREE_QUARTERS;
  public static final Fraction TWO_FIFTHS;
  public static final Fraction TWO_QUARTERS;
  public static final Fraction TWO_THIRDS;
  public static final Fraction ZERO = new Fraction(0, 1);
  private static final long serialVersionUID = 65382027393090L;
  private final int denominator;
  private transient int hashCode = 0;
  private final int numerator;
  private transient String toProperString = null;
  private transient String toString = null;
  
  static
  {
    ONE = new Fraction(1, 1);
    ONE_HALF = new Fraction(1, 2);
    ONE_THIRD = new Fraction(1, 3);
    TWO_THIRDS = new Fraction(2, 3);
    ONE_QUARTER = new Fraction(1, 4);
    TWO_QUARTERS = new Fraction(2, 4);
    THREE_QUARTERS = new Fraction(3, 4);
    ONE_FIFTH = new Fraction(1, 5);
    TWO_FIFTHS = new Fraction(2, 5);
    THREE_FIFTHS = new Fraction(3, 5);
  }
  
  private Fraction(int paramInt1, int paramInt2)
  {
    numerator = paramInt1;
    denominator = paramInt2;
  }
  
  private static int addAndCheck(int paramInt1, int paramInt2)
  {
    long l = paramInt1 + paramInt2;
    if ((l < -2147483648L) || (l > 2147483647L)) {
      throw new ArithmeticException("overflow: add");
    }
    return (int)l;
  }
  
  private Fraction addSub(Fraction paramFraction, boolean paramBoolean)
  {
    if (paramFraction == null) {
      throw new IllegalArgumentException("The fraction must not be null");
    }
    if (numerator == 0)
    {
      if (paramBoolean) {
        return paramFraction;
      }
      return paramFraction.negate();
    }
    if (numerator == 0) {
      return this;
    }
    int j = greatestCommonDivisor(denominator, denominator);
    if (j == 1)
    {
      i = mulAndCheck(numerator, denominator);
      j = mulAndCheck(numerator, denominator);
      if (paramBoolean) {}
      for (i = addAndCheck(i, j);; i = subAndCheck(i, j)) {
        return new Fraction(i, mulPosAndCheck(denominator, denominator));
      }
    }
    BigInteger localBigInteger1 = BigInteger.valueOf(numerator).multiply(BigInteger.valueOf(denominator / j));
    BigInteger localBigInteger2 = BigInteger.valueOf(numerator).multiply(BigInteger.valueOf(denominator / j));
    if (paramBoolean)
    {
      localBigInteger1 = localBigInteger1.add(localBigInteger2);
      i = localBigInteger1.mod(BigInteger.valueOf(j)).intValue();
      if (i != 0) {
        break label253;
      }
    }
    label253:
    for (int i = j;; i = greatestCommonDivisor(i, j))
    {
      localBigInteger1 = localBigInteger1.divide(BigInteger.valueOf(i));
      if (localBigInteger1.bitLength() <= 31) {
        break label263;
      }
      throw new ArithmeticException("overflow: numerator too large after multiply");
      localBigInteger1 = localBigInteger1.subtract(localBigInteger2);
      break;
    }
    label263:
    return new Fraction(localBigInteger1.intValue(), mulPosAndCheck(denominator / j, denominator / i));
  }
  
  public static Fraction getFraction(double paramDouble)
  {
    if (paramDouble < 0.0D) {}
    for (int k = -1;; k = 1)
    {
      paramDouble = Math.abs(paramDouble);
      if ((paramDouble <= 2.147483647E9D) && (!Double.isNaN(paramDouble))) {
        break;
      }
      throw new ArithmeticException("The value must not be greater than Integer.MAX_VALUE or NaN");
    }
    int i5 = (int)paramDouble;
    double d4 = paramDouble - i5;
    int i1 = (int)d4;
    paramDouble = i1;
    double d2 = Double.MAX_VALUE;
    int m = 1;
    int n = 1;
    int i2 = 0;
    int j = 0;
    int i = 1;
    double d1 = 1.0D;
    paramDouble = d4 - paramDouble;
    for (;;)
    {
      double d3 = d1;
      int i4 = (int)(d3 / paramDouble);
      double d5 = i4;
      int i3 = i2 + i1 * i;
      i1 = i1 * j + n;
      d1 = Math.abs(d4 - i3 / i1);
      m += 1;
      if ((d2 <= d1) || (i1 > 10000) || (i1 <= 0) || (m >= 25))
      {
        if (m == 25) {
          throw new ArithmeticException("Unable to convert double to fraction");
        }
        return getReducedFraction(k * (i5 * j + i), j);
      }
      d2 = d1;
      n = j;
      d1 = paramDouble;
      j = i1;
      i1 = i4;
      paramDouble = d3 - d5 * paramDouble;
      i2 = i;
      i = i3;
    }
  }
  
  public static Fraction getFraction(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      throw new ArithmeticException("The denominator must not be zero");
    }
    int j = paramInt1;
    int i = paramInt2;
    if (paramInt2 < 0)
    {
      if ((paramInt1 == Integer.MIN_VALUE) || (paramInt2 == Integer.MIN_VALUE)) {
        throw new ArithmeticException("overflow: can't negate");
      }
      j = -paramInt1;
      i = -paramInt2;
    }
    return new Fraction(j, i);
  }
  
  public static Fraction getFraction(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 == 0) {
      throw new ArithmeticException("The denominator must not be zero");
    }
    if (paramInt3 < 0) {
      throw new ArithmeticException("The denominator must not be negative");
    }
    if (paramInt2 < 0) {
      throw new ArithmeticException("The numerator must not be negative");
    }
    if (paramInt1 < 0) {}
    for (long l = paramInt1 * paramInt3 - paramInt2; (l < -2147483648L) || (l > 2147483647L); l = paramInt1 * paramInt3 + paramInt2) {
      throw new ArithmeticException("Numerator too large to represent as an Integer.");
    }
    return new Fraction((int)l, paramInt3);
  }
  
  public static Fraction getFraction(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("The string must not be null");
    }
    if (paramString.indexOf('.') >= 0) {
      return getFraction(Double.parseDouble(paramString));
    }
    int j = paramString.indexOf(' ');
    if (j > 0)
    {
      i = Integer.parseInt(paramString.substring(0, j));
      paramString = paramString.substring(j + 1);
      j = paramString.indexOf('/');
      if (j < 0) {
        throw new NumberFormatException("The fraction could not be parsed as the format X Y/Z");
      }
      return getFraction(i, Integer.parseInt(paramString.substring(0, j)), Integer.parseInt(paramString.substring(j + 1)));
    }
    int i = paramString.indexOf('/');
    if (i < 0) {
      return getFraction(Integer.parseInt(paramString), 1);
    }
    return getFraction(Integer.parseInt(paramString.substring(0, i)), Integer.parseInt(paramString.substring(i + 1)));
  }
  
  public static Fraction getReducedFraction(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      throw new ArithmeticException("The denominator must not be zero");
    }
    if (paramInt1 == 0) {
      return ZERO;
    }
    int i;
    if ((paramInt2 == Integer.MIN_VALUE) && ((paramInt1 & 0x1) == 0))
    {
      i = paramInt1 / 2;
      paramInt1 = paramInt2 / 2;
    }
    for (paramInt2 = i;; paramInt2 = i)
    {
      int j = paramInt1;
      i = paramInt2;
      if (paramInt1 < 0)
      {
        if ((paramInt2 == Integer.MIN_VALUE) || (paramInt1 == Integer.MIN_VALUE)) {
          throw new ArithmeticException("overflow: can't negate");
        }
        i = -paramInt2;
        j = -paramInt1;
      }
      paramInt1 = greatestCommonDivisor(i, j);
      return new Fraction(i / paramInt1, j / paramInt1);
      i = paramInt1;
      paramInt1 = paramInt2;
    }
  }
  
  private static int greatestCommonDivisor(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) || (paramInt2 == 0))
    {
      if ((paramInt1 == Integer.MIN_VALUE) || (paramInt2 == Integer.MIN_VALUE)) {
        throw new ArithmeticException("overflow: gcd is 2^31");
      }
      return Math.abs(paramInt1) + Math.abs(paramInt2);
    }
    if ((Math.abs(paramInt1) == 1) || (Math.abs(paramInt2) == 1)) {
      return 1;
    }
    if (paramInt1 > 0) {
      paramInt1 = -paramInt1;
    }
    for (;;)
    {
      int i = paramInt2;
      if (paramInt2 > 0) {
        i = -paramInt2;
      }
      int j = 0;
      paramInt2 = paramInt1;
      paramInt1 = i;
      while (((paramInt2 & 0x1) == 0) && ((paramInt1 & 0x1) == 0) && (j < 31))
      {
        paramInt2 /= 2;
        paramInt1 /= 2;
        j += 1;
      }
      if (j == 31) {
        throw new ArithmeticException("overflow: gcd is 2^31");
      }
      if ((paramInt2 & 0x1) == 1) {
        i = paramInt1;
      }
      while ((paramInt1 & 0x1) == 0)
      {
        paramInt1 /= 2;
        continue;
        k = -(paramInt2 / 2);
        i = paramInt1;
        paramInt1 = k;
      }
      if (paramInt1 > 0) {}
      for (int k = -paramInt1;; k = paramInt2)
      {
        int m = (i - k) / 2;
        paramInt1 = m;
        paramInt2 = k;
        if (m != 0) {
          break;
        }
        return -k * (1 << j);
        i = paramInt1;
      }
    }
  }
  
  private static int mulAndCheck(int paramInt1, int paramInt2)
  {
    long l = paramInt1 * paramInt2;
    if ((l < -2147483648L) || (l > 2147483647L)) {
      throw new ArithmeticException("overflow: mul");
    }
    return (int)l;
  }
  
  private static int mulPosAndCheck(int paramInt1, int paramInt2)
  {
    long l = paramInt1 * paramInt2;
    if (l > 2147483647L) {
      throw new ArithmeticException("overflow: mulPos");
    }
    return (int)l;
  }
  
  private static int subAndCheck(int paramInt1, int paramInt2)
  {
    long l = paramInt1 - paramInt2;
    if ((l < -2147483648L) || (l > 2147483647L)) {
      throw new ArithmeticException("overflow: add");
    }
    return (int)l;
  }
  
  public final Fraction abs()
  {
    if (numerator >= 0) {
      return this;
    }
    return negate();
  }
  
  public final Fraction add(Fraction paramFraction)
  {
    return addSub(paramFraction, true);
  }
  
  public final int compareTo(Fraction paramFraction)
  {
    if (this == paramFraction) {}
    long l1;
    long l2;
    do
    {
      do
      {
        return 0;
      } while ((numerator == numerator) && (denominator == denominator));
      l1 = numerator * denominator;
      l2 = numerator * denominator;
    } while (l1 == l2);
    if (l1 < l2) {
      return -1;
    }
    return 1;
  }
  
  public final Fraction divideBy(Fraction paramFraction)
  {
    if (paramFraction == null) {
      throw new IllegalArgumentException("The fraction must not be null");
    }
    if (numerator == 0) {
      throw new ArithmeticException("The fraction to divide by must not be zero");
    }
    return multiplyBy(paramFraction.invert());
  }
  
  public final double doubleValue()
  {
    return numerator / denominator;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Fraction)) {
        return false;
      }
      paramObject = (Fraction)paramObject;
    } while ((getNumerator() == ((Fraction)paramObject).getNumerator()) && (getDenominator() == ((Fraction)paramObject).getDenominator()));
    return false;
  }
  
  public final float floatValue()
  {
    return numerator / denominator;
  }
  
  public final int getDenominator()
  {
    return denominator;
  }
  
  public final int getNumerator()
  {
    return numerator;
  }
  
  public final int getProperNumerator()
  {
    return Math.abs(numerator % denominator);
  }
  
  public final int getProperWhole()
  {
    return numerator / denominator;
  }
  
  public final int hashCode()
  {
    if (hashCode == 0) {
      hashCode = ((getNumerator() + 629) * 37 + getDenominator());
    }
    return hashCode;
  }
  
  public final int intValue()
  {
    return numerator / denominator;
  }
  
  public final Fraction invert()
  {
    if (numerator == 0) {
      throw new ArithmeticException("Unable to invert zero.");
    }
    if (numerator == Integer.MIN_VALUE) {
      throw new ArithmeticException("overflow: can't negate numerator");
    }
    if (numerator < 0) {
      return new Fraction(-denominator, -numerator);
    }
    return new Fraction(denominator, numerator);
  }
  
  public final long longValue()
  {
    return numerator / denominator;
  }
  
  public final Fraction multiplyBy(Fraction paramFraction)
  {
    if (paramFraction == null) {
      throw new IllegalArgumentException("The fraction must not be null");
    }
    if ((numerator == 0) || (numerator == 0)) {
      return ZERO;
    }
    int i = greatestCommonDivisor(numerator, denominator);
    int j = greatestCommonDivisor(numerator, denominator);
    return getReducedFraction(mulAndCheck(numerator / i, numerator / j), mulPosAndCheck(denominator / j, denominator / i));
  }
  
  public final Fraction negate()
  {
    if (numerator == Integer.MIN_VALUE) {
      throw new ArithmeticException("overflow: too large to negate");
    }
    return new Fraction(-numerator, denominator);
  }
  
  public final Fraction pow(int paramInt)
  {
    Object localObject = this;
    Fraction localFraction;
    for (;;)
    {
      if (paramInt == 1) {
        return (Fraction)localObject;
      }
      if (paramInt == 0) {
        return ONE;
      }
      if (paramInt < 0)
      {
        if (paramInt == Integer.MIN_VALUE)
        {
          localObject = ((Fraction)localObject).invert().pow(2);
          paramInt = -(paramInt / 2);
        }
        else
        {
          localObject = ((Fraction)localObject).invert();
          paramInt = -paramInt;
        }
      }
      else
      {
        localFraction = ((Fraction)localObject).multiplyBy((Fraction)localObject);
        if (paramInt % 2 != 0) {
          break;
        }
        paramInt /= 2;
        localObject = localFraction;
      }
    }
    return localFraction.pow(paramInt / 2).multiplyBy((Fraction)localObject);
  }
  
  public final Fraction reduce()
  {
    if (numerator == 0) {
      if (!equals(ZERO)) {}
    }
    int i;
    do
    {
      return this;
      return ZERO;
      i = greatestCommonDivisor(Math.abs(numerator), denominator);
    } while (i == 1);
    return getFraction(numerator / i, denominator / i);
  }
  
  public final Fraction subtract(Fraction paramFraction)
  {
    return addSub(paramFraction, false);
  }
  
  public final String toProperString()
  {
    if (toProperString == null)
    {
      if (numerator != 0) {
        break label26;
      }
      toProperString = "0";
    }
    for (;;)
    {
      return toProperString;
      label26:
      if (numerator == denominator)
      {
        toProperString = "1";
      }
      else if (numerator == denominator * -1)
      {
        toProperString = "-1";
      }
      else
      {
        int i;
        if (numerator > 0) {
          i = -numerator;
        }
        for (;;)
        {
          if (i < -denominator)
          {
            i = getProperNumerator();
            if (i == 0)
            {
              toProperString = Integer.toString(getProperWhole());
              break;
              i = numerator;
              continue;
            }
            toProperString = (32 + getProperWhole() + ' ' + i + '/' + getDenominator());
            break;
          }
        }
        toProperString = (32 + getNumerator() + '/' + getDenominator());
      }
    }
  }
  
  public final String toString()
  {
    if (toString == null) {
      toString = (32 + getNumerator() + '/' + getDenominator());
    }
    return toString;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.math.Fraction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */