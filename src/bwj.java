import java.util.HashMap;
import java.util.Map;

public final class bwj
{
  private static final Map<Integer, String> a;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put(Integer.valueOf(0), "Crash Data");
    a.put(Integer.valueOf(1), "The app found information about previous crashes. Would you like to send this data to the developer?");
    a.put(Integer.valueOf(2), "Dismiss");
    a.put(Integer.valueOf(3), "Always send");
    a.put(Integer.valueOf(4), "Send");
    a.put(Integer.valueOf(256), "Download Failed");
    a.put(Integer.valueOf(257), "The update could not be downloaded. Would you like to try again?");
    a.put(Integer.valueOf(258), "Cancel");
    a.put(Integer.valueOf(259), "Retry");
    a.put(Integer.valueOf(512), "Please install the latest version to continue to use this app.");
    a.put(Integer.valueOf(513), "Update Available");
    a.put(Integer.valueOf(514), "Show information about the new update?");
    a.put(Integer.valueOf(515), "Dismiss");
    a.put(Integer.valueOf(516), "Show");
    a.put(Integer.valueOf(768), "Build Expired");
    a.put(Integer.valueOf(769), "This has build has expired. Please check HockeyApp for any updates.");
    a.put(Integer.valueOf(1024), "Feedback Failed");
    a.put(Integer.valueOf(1025), "Would you like to send your feedback again?");
    a.put(Integer.valueOf(1026), "Name");
    a.put(Integer.valueOf(1027), "Email");
    a.put(Integer.valueOf(1028), "Subject");
    a.put(Integer.valueOf(1029), "Message");
    a.put(Integer.valueOf(1030), "Last Updated: ");
    a.put(Integer.valueOf(1031), "Add Attachment");
    a.put(Integer.valueOf(1032), "Send Feedback");
    a.put(Integer.valueOf(1033), "Add a Response");
    a.put(Integer.valueOf(1034), "Refresh");
    a.put(Integer.valueOf(1035), "Feedback");
    a.put(Integer.valueOf(1036), "Message couldn't be posted. Please check your input values and your connection, then try again.");
    a.put(Integer.valueOf(1037), "No response from server. Please check your connection, then try again.");
    a.put(Integer.valueOf(1038), "Please enter a subject");
    a.put(Integer.valueOf(1041), "Please enter a name");
    a.put(Integer.valueOf(1042), "Please enter an email address");
    a.put(Integer.valueOf(1043), "Please enter a feedback text");
    a.put(Integer.valueOf(1039), "Message couldn't be posted. Please check the format of your email address.");
    a.put(Integer.valueOf(1040), "An error has occured");
    a.put(Integer.valueOf(1280), "Please enter your account credentials.");
    a.put(Integer.valueOf(1281), "Please fill in the missing account credentials.");
    a.put(Integer.valueOf(1282), "Email");
    a.put(Integer.valueOf(1283), "Password");
    a.put(Integer.valueOf(1284), "Login");
    a.put(Integer.valueOf(1536), "Draw something!");
    a.put(Integer.valueOf(1537), "Save");
    a.put(Integer.valueOf(1538), "Undo");
    a.put(Integer.valueOf(1539), "Clear");
    a.put(Integer.valueOf(1540), "Discard your drawings?");
    a.put(Integer.valueOf(1541), "No");
    a.put(Integer.valueOf(1542), "Yes");
  }
  
  public static String a(int paramInt)
  {
    return a(null, paramInt);
  }
  
  public static String a(bwi parambwi, int paramInt)
  {
    String str = null;
    if (parambwi != null) {
      str = parambwi.a(paramInt);
    }
    parambwi = str;
    if (str == null) {
      parambwi = (String)a.get(Integer.valueOf(paramInt));
    }
    return parambwi;
  }
}

/* Location:
 * Qualified Name:     bwj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */