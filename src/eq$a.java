import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public final class eq$a
  implements Externalizable
{
  String a = "";
  String b = "";
  List<String> c = new ArrayList();
  String d = "";
  boolean e = false;
  String f = "";
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  
  public final int a()
  {
    return c.size();
  }
  
  public final void readExternal(ObjectInput paramObjectInput)
  {
    String str = paramObjectInput.readUTF();
    g = true;
    a = str;
    str = paramObjectInput.readUTF();
    h = true;
    b = str;
    int n = paramObjectInput.readInt();
    int m = 0;
    while (m < n)
    {
      c.add(paramObjectInput.readUTF());
      m += 1;
    }
    if (paramObjectInput.readBoolean())
    {
      str = paramObjectInput.readUTF();
      i = true;
      d = str;
    }
    if (paramObjectInput.readBoolean())
    {
      str = paramObjectInput.readUTF();
      k = true;
      f = str;
    }
    boolean bool = paramObjectInput.readBoolean();
    j = true;
    e = bool;
  }
  
  public final void writeExternal(ObjectOutput paramObjectOutput)
  {
    paramObjectOutput.writeUTF(a);
    paramObjectOutput.writeUTF(b);
    int n = a();
    paramObjectOutput.writeInt(n);
    int m = 0;
    while (m < n)
    {
      paramObjectOutput.writeUTF((String)c.get(m));
      m += 1;
    }
    paramObjectOutput.writeBoolean(i);
    if (i) {
      paramObjectOutput.writeUTF(d);
    }
    paramObjectOutput.writeBoolean(k);
    if (k) {
      paramObjectOutput.writeUTF(f);
    }
    paramObjectOutput.writeBoolean(e);
  }
}

/* Location:
 * Qualified Name:     eq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */