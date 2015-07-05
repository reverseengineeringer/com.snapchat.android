import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;

public final class eq$d
  implements Externalizable
{
  String a = "";
  String b = "";
  private boolean c;
  private boolean d;
  private boolean e;
  private String f = "";
  
  public final void readExternal(ObjectInput paramObjectInput)
  {
    String str;
    if (paramObjectInput.readBoolean())
    {
      str = paramObjectInput.readUTF();
      c = true;
      a = str;
    }
    if (paramObjectInput.readBoolean())
    {
      str = paramObjectInput.readUTF();
      d = true;
      b = str;
    }
    if (paramObjectInput.readBoolean())
    {
      paramObjectInput = paramObjectInput.readUTF();
      e = true;
      f = paramObjectInput;
    }
  }
  
  public final void writeExternal(ObjectOutput paramObjectOutput)
  {
    paramObjectOutput.writeBoolean(c);
    if (c) {
      paramObjectOutput.writeUTF(a);
    }
    paramObjectOutput.writeBoolean(d);
    if (d) {
      paramObjectOutput.writeUTF(b);
    }
    paramObjectOutput.writeBoolean(e);
    if (e) {
      paramObjectOutput.writeUTF(f);
    }
  }
}

/* Location:
 * Qualified Name:     eq.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */