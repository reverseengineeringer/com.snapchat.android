package com.google.android.gms.internal;

import android.content.Context;
import java.util.List;

@zzgi
public final class zzca
{
  public static zzbx<String> zzqA = zzbx.zzd("gads:sdk_csi_server", "https://csi.gstatic.com/csi");
  public static final zzbx<Boolean> zzqB = zzbx.zza("gads:enable_content_fetching", Boolean.valueOf(false));
  public static final zzbx<Integer> zzqC = zzbx.zza("gads:content_length_weight", 1);
  public static final zzbx<Integer> zzqD = zzbx.zza("gads:content_age_weight", 1);
  public static final zzbx<Integer> zzqE = zzbx.zza("gads:min_content_len", 11);
  public static final zzbx<Integer> zzqF = zzbx.zza("gads:fingerprint_number", 10);
  public static final zzbx<Integer> zzqG = zzbx.zza("gads:sleep_sec", 10);
  public static final zzbx<String> zzqH = zzbx.zzA("gads:kitkat_interstitial_workaround:experiment_id");
  public static final zzbx<Boolean> zzqI = zzbx.zza("gads:kitkat_interstitial_workaround:enabled", Boolean.valueOf(true));
  public static final zzbx<Boolean> zzqJ = zzbx.zza("gads:interstitial_follow_url", Boolean.valueOf(true));
  public static final zzbx<String> zzqK = zzbx.zzA("gads:interstitial_follow_url:experiment_id");
  public static final zzbx<Boolean> zzqL = zzbx.zza("gads:analytics_enabled", Boolean.valueOf(true));
  public static final zzbx<Boolean> zzqM = zzbx.zza("gads:ad_key_enabled", Boolean.valueOf(false));
  public static final zzbx<Integer> zzqN = zzbx.zza("gads:webview_cache_version", 0);
  public static final zzbx<String> zzqk = zzbx.zzA("gads:sdk_core_experiment_id");
  public static final zzbx<String> zzql = zzbx.zzd("gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
  public static final zzbx<Boolean> zzqm = zzbx.zza("gads:request_builder:singleton_webview", Boolean.valueOf(false));
  public static final zzbx<String> zzqn = zzbx.zzA("gads:request_builder:singleton_webview_experiment_id");
  public static final zzbx<Boolean> zzqo = zzbx.zza("gads:sdk_crash_report_enabled", Boolean.valueOf(false));
  public static final zzbx<Boolean> zzqp = zzbx.zza("gads:sdk_crash_report_full_stacktrace", Boolean.valueOf(false));
  public static final zzbx<Boolean> zzqq = zzbx.zza("gads:block_autoclicks", Boolean.valueOf(false));
  public static final zzbx<String> zzqr = zzbx.zzA("gads:block_autoclicks_experiment_id");
  public static final zzbx<String> zzqs = zzbx.zzA("gads:prefetch:experiment_id");
  public static final zzbx<String> zzqt = zzbx.zzA("gads:spam_app_context:experiment_id");
  public static final zzbx<Boolean> zzqu = zzbx.zza("gads:spam_app_context:enabled", Boolean.valueOf(false));
  public static final zzbx<String> zzqv = zzbx.zzd("gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
  public static final zzbx<String> zzqw = zzbx.zzd("gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
  public static final zzbx<String> zzqx = zzbx.zzd("gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
  public static final zzbx<Boolean> zzqy = zzbx.zza("gads:enabled_sdk_csi", Boolean.valueOf(false));
  public static zzbx<Integer> zzqz = zzbx.zza("gads:sdk_csi_batch_size", 20);
  
  public static void zza(Runnable paramRunnable)
  {
    zzab.zzaT().zza(paramRunnable);
  }
  
  public static List<String> zzca()
  {
    return zzab.zzaS().zzca();
  }
  
  public static List<String> zzcb()
  {
    return zzab.zzaS().zzcb();
  }
  
  public static void zzl(Context paramContext)
  {
    zzab.zzaT().zzl(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */