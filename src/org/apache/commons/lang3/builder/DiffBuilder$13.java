package org.apache.commons.lang3.builder;

class DiffBuilder$13
  extends Diff<Long>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$13(DiffBuilder paramDiffBuilder, String paramString, long paramLong1, long paramLong2)
  {
    super(paramString);
  }
  
  public Long getLeft()
  {
    return Long.valueOf(val$lhs);
  }
  
  public Long getRight()
  {
    return Long.valueOf(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */