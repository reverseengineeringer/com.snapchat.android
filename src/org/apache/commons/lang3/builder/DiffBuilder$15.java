package org.apache.commons.lang3.builder;

class DiffBuilder$15
  extends Diff<Short>
{
  private static final long serialVersionUID = 1L;
  
  DiffBuilder$15(DiffBuilder paramDiffBuilder, String paramString, short paramShort1, short paramShort2)
  {
    super(paramString);
  }
  
  public Short getLeft()
  {
    return Short.valueOf(val$lhs);
  }
  
  public Short getRight()
  {
    return Short.valueOf(val$rhs);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.builder.DiffBuilder.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */