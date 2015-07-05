package org.apache.commons.lang3.builder;

import org.apache.commons.lang3.ArrayUtils;

class DiffBuilder$4
  extends Diff<Byte[]>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$4(DiffBuilder paramDiffBuilder, String paramString, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    super(paramString);
  }
  
  public Byte[] getLeft()
  {
    return ArrayUtils.toObject(val$lhs);
  }
  
  public Byte[] getRight()
  {
    return ArrayUtils.toObject(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */