final class bar$b
  extends tx
{
  private final String mRecipient;
  private final String mTaskId;
  
  public bar$b(String paramString1, String paramString2)
  {
    mRecipient = paramString1;
    mTaskId = paramString2;
  }
  
  public final String getBaseUrl()
  {
    return "https://feelinsonice-hrd.appspot.com";
  }
  
  protected final String getPath()
  {
    return "/debug/request_client_log?recipientUsername=" + mRecipient + "&taskId=" + mTaskId;
  }
  
  public final Object getRequestPayload()
  {
    return new qc();
  }
}

/* Location:
 * Qualified Name:     bar.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */