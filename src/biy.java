import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class biy
  extends bkb
{
  @SerializedName("broadcast")
  protected Integer broadcast;
  @SerializedName("broadcast_action_text")
  protected String broadcastActionText;
  @SerializedName("broadcast_hide_timer")
  protected Boolean broadcastHideTimer;
  @SerializedName("broadcast_media_url")
  protected String broadcastMediaUrl;
  @SerializedName("broadcast_url")
  protected String broadcastUrl;
  @SerializedName("c")
  protected Integer c;
  @SerializedName("c_id")
  protected String cId;
  @SerializedName("cap_ori")
  protected Long capOri;
  @SerializedName("cap_pos")
  protected Double capPos;
  @SerializedName("cap_text")
  protected String capText;
  @SerializedName("filter_id")
  protected String filterId;
  @SerializedName("pending")
  protected Boolean pending;
  @SerializedName("replayed")
  protected Boolean replayed;
  @SerializedName("rp")
  protected String rp;
  @SerializedName("sn")
  protected String sn;
  @SerializedName("t")
  protected Integer t;
  @SerializedName("timer")
  protected Double timer;
  
  public final String a()
  {
    return sn;
  }
  
  public final Integer b()
  {
    return t;
  }
  
  public final Double c()
  {
    return timer;
  }
  
  public final String d()
  {
    return capText;
  }
  
  public final Integer e()
  {
    return broadcast;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof biy)) {
      return false;
    }
    paramObject = (biy)paramObject;
    return new EqualsBuilder().append(sn, sn).append(t, t).append(timer, timer).append(capText, capText).append(capPos, capPos).append(capOri, capOri).append(broadcast, broadcast).append(broadcastMediaUrl, broadcastMediaUrl).append(broadcastUrl, broadcastUrl).append(broadcastActionText, broadcastActionText).append(broadcastHideTimer, broadcastHideTimer).append(filterId, filterId).append(rp, rp).append(cId, cId).append(replayed, replayed).append(pending, pending).append(c, c).isEquals();
  }
  
  public final String f()
  {
    return broadcastMediaUrl;
  }
  
  public final String g()
  {
    return broadcastUrl;
  }
  
  public final String h()
  {
    return broadcastActionText;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(sn).append(t).append(timer).append(capText).append(capPos).append(capOri).append(broadcast).append(broadcastMediaUrl).append(broadcastUrl).append(broadcastActionText).append(broadcastHideTimer).append(filterId).append(rp).append(cId).append(replayed).append(pending).append(c).toHashCode();
  }
  
  public final Boolean i()
  {
    return broadcastHideTimer;
  }
  
  public final String j()
  {
    return filterId;
  }
  
  public final String k()
  {
    return rp;
  }
  
  public final String l()
  {
    return cId;
  }
  
  public final Boolean m()
  {
    return replayed;
  }
  
  public final Boolean n()
  {
    return pending;
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     biy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */