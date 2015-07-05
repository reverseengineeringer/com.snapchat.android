package org.apache.commons.lang3.builder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.lang3.ArrayUtils;

public class DiffBuilder
  implements Builder<DiffResult>
{
  private final List<Diff<?>> diffs;
  private final Object left;
  private final boolean objectsTriviallyEqual;
  private final Object right;
  private final ToStringStyle style;
  
  public DiffBuilder(Object paramObject1, Object paramObject2, ToStringStyle paramToStringStyle)
  {
    if (paramObject1 == null) {
      throw new IllegalArgumentException("lhs cannot be null");
    }
    if (paramObject2 == null) {
      throw new IllegalArgumentException("rhs cannot be null");
    }
    diffs = new ArrayList();
    left = paramObject1;
    right = paramObject2;
    style = paramToStringStyle;
    if ((paramObject1 == paramObject2) || (paramObject1.equals(paramObject2))) {}
    for (boolean bool = true;; bool = false)
    {
      objectsTriviallyEqual = bool;
      return;
    }
  }
  
  public DiffBuilder append(String paramString, final byte paramByte1, final byte paramByte2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (paramByte1 == paramByte2) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Byte getLeft()
      {
        return Byte.valueOf(paramByte1);
      }
      
      public Byte getRight()
      {
        return Byte.valueOf(paramByte2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final char paramChar1, final char paramChar2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (paramChar1 == paramChar2) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Character getLeft()
      {
        return Character.valueOf(paramChar1);
      }
      
      public Character getRight()
      {
        return Character.valueOf(paramChar2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final double paramDouble1, double paramDouble2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Double.doubleToLongBits(paramDouble1) == Double.doubleToLongBits(paramDouble2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Double getLeft()
      {
        return Double.valueOf(paramDouble1);
      }
      
      public Double getRight()
      {
        return Double.valueOf(val$rhs);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final float paramFloat1, final float paramFloat2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Float.floatToIntBits(paramFloat1) == Float.floatToIntBits(paramFloat2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Float getLeft()
      {
        return Float.valueOf(paramFloat1);
      }
      
      public Float getRight()
      {
        return Float.valueOf(paramFloat2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final int paramInt1, final int paramInt2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (paramInt1 == paramInt2) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Integer getLeft()
      {
        return Integer.valueOf(paramInt1);
      }
      
      public Integer getRight()
      {
        return Integer.valueOf(paramInt2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final long paramLong1, long paramLong2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (paramLong1 == paramLong2) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Long getLeft()
      {
        return Long.valueOf(paramLong1);
      }
      
      public Long getRight()
      {
        return Long.valueOf(val$rhs);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final Object paramObject1, final Object paramObject2)
  {
    if (objectsTriviallyEqual) {}
    while (paramObject1 == paramObject2) {
      return this;
    }
    Object localObject;
    if (paramObject1 != null) {
      localObject = paramObject1;
    }
    while (localObject.getClass().isArray()) {
      if ((localObject instanceof boolean[]))
      {
        return append(paramString, (boolean[])paramObject1, (boolean[])paramObject2);
        localObject = paramObject2;
      }
      else
      {
        if ((localObject instanceof byte[])) {
          return append(paramString, (byte[])paramObject1, (byte[])paramObject2);
        }
        if ((localObject instanceof char[])) {
          return append(paramString, (char[])paramObject1, (char[])paramObject2);
        }
        if ((localObject instanceof double[])) {
          return append(paramString, (double[])paramObject1, (double[])paramObject2);
        }
        if ((localObject instanceof float[])) {
          return append(paramString, (float[])paramObject1, (float[])paramObject2);
        }
        if ((localObject instanceof int[])) {
          return append(paramString, (int[])paramObject1, (int[])paramObject2);
        }
        if ((localObject instanceof long[])) {
          return append(paramString, (long[])paramObject1, (long[])paramObject2);
        }
        if ((localObject instanceof short[])) {
          return append(paramString, (short[])paramObject1, (short[])paramObject2);
        }
        return append(paramString, (Object[])paramObject1, (Object[])paramObject2);
      }
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Object getLeft()
      {
        return paramObject1;
      }
      
      public Object getRight()
      {
        return paramObject2;
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final short paramShort1, final short paramShort2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (paramShort1 == paramShort2) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Short getLeft()
      {
        return Short.valueOf(paramShort1);
      }
      
      public Short getRight()
      {
        return Short.valueOf(paramShort2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final boolean paramBoolean1, final boolean paramBoolean2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (paramBoolean1 == paramBoolean2) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Boolean getLeft()
      {
        return Boolean.valueOf(paramBoolean1);
      }
      
      public Boolean getRight()
      {
        return Boolean.valueOf(paramBoolean2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final byte[] paramArrayOfByte1, final byte[] paramArrayOfByte2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfByte1, paramArrayOfByte2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Byte[] getLeft()
      {
        return ArrayUtils.toObject(paramArrayOfByte1);
      }
      
      public Byte[] getRight()
      {
        return ArrayUtils.toObject(paramArrayOfByte2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final char[] paramArrayOfChar1, final char[] paramArrayOfChar2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfChar1, paramArrayOfChar2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Character[] getLeft()
      {
        return ArrayUtils.toObject(paramArrayOfChar1);
      }
      
      public Character[] getRight()
      {
        return ArrayUtils.toObject(paramArrayOfChar2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final double[] paramArrayOfDouble1, final double[] paramArrayOfDouble2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfDouble1, paramArrayOfDouble2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Double[] getLeft()
      {
        return ArrayUtils.toObject(paramArrayOfDouble1);
      }
      
      public Double[] getRight()
      {
        return ArrayUtils.toObject(paramArrayOfDouble2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final float[] paramArrayOfFloat1, final float[] paramArrayOfFloat2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfFloat1, paramArrayOfFloat2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Float[] getLeft()
      {
        return ArrayUtils.toObject(paramArrayOfFloat1);
      }
      
      public Float[] getRight()
      {
        return ArrayUtils.toObject(paramArrayOfFloat2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final int[] paramArrayOfInt1, final int[] paramArrayOfInt2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfInt1, paramArrayOfInt2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Integer[] getLeft()
      {
        return ArrayUtils.toObject(paramArrayOfInt1);
      }
      
      public Integer[] getRight()
      {
        return ArrayUtils.toObject(paramArrayOfInt2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final long[] paramArrayOfLong1, final long[] paramArrayOfLong2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfLong1, paramArrayOfLong2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Long[] getLeft()
      {
        return ArrayUtils.toObject(paramArrayOfLong1);
      }
      
      public Long[] getRight()
      {
        return ArrayUtils.toObject(paramArrayOfLong2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final Object[] paramArrayOfObject1, final Object[] paramArrayOfObject2)
  {
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfObject1, paramArrayOfObject2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Object[] getLeft()
      {
        return paramArrayOfObject1;
      }
      
      public Object[] getRight()
      {
        return paramArrayOfObject2;
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final short[] paramArrayOfShort1, final short[] paramArrayOfShort2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfShort1, paramArrayOfShort2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Short[] getLeft()
      {
        return ArrayUtils.toObject(paramArrayOfShort1);
      }
      
      public Short[] getRight()
      {
        return ArrayUtils.toObject(paramArrayOfShort2);
      }
    });
    return this;
  }
  
  public DiffBuilder append(String paramString, final boolean[] paramArrayOfBoolean1, final boolean[] paramArrayOfBoolean2)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Field name cannot be null");
    }
    if (objectsTriviallyEqual) {}
    while (Arrays.equals(paramArrayOfBoolean1, paramArrayOfBoolean2)) {
      return this;
    }
    diffs.add(new Diff(paramString)
    {
      private static final long serialVersionUID = 1L;
      
      public Boolean[] getLeft()
      {
        return ArrayUtils.toObject(paramArrayOfBoolean1);
      }
      
      public Boolean[] getRight()
      {
        return ArrayUtils.toObject(paramArrayOfBoolean2);
      }
    });
    return this;
  }
  
  public DiffResult build()
  {
    return new DiffResult(left, right, diffs, style);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */