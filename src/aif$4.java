import com.addlive.service.Responder;

final class aif$4
  implements Responder<Void>
{
  aif$4(aif paramaif) {}
  
  public final void errHandler(int paramInt, String paramString)
  {
    new StringBuilder("Failed to terminate connection to AddLive scope: ").append(paramString).append("(ERR:").append(paramInt).append(")");
  }
}

/* Location:
 * Qualified Name:     aif.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */