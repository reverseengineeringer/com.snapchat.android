public final class bca
{
  @chd
  public final String mId;
  public final String mMessageId;
  public final boolean mScrollToBottom;
  
  public bca(@chc String paramString)
  {
    this(paramString, null, false);
  }
  
  public bca(@chc String paramString1, @chc String paramString2)
  {
    this(paramString1, paramString2, false);
  }
  
  private bca(@chc String paramString1, @chd String paramString2, boolean paramBoolean)
  {
    mId = paramString1;
    mScrollToBottom = paramBoolean;
    mMessageId = paramString2;
  }
  
  public bca(@chc String paramString, boolean paramBoolean)
  {
    this(paramString, null, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     bca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */