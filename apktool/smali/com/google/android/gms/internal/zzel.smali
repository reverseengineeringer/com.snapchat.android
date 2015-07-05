.class public Lcom/google/android/gms/internal/zzel;
.super Lcom/google/android/gms/internal/zzev$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzel$zzb;,
        Lcom/google/android/gms/internal/zzel$zzc;,
        Lcom/google/android/gms/internal/zzel$zza;
    }
.end annotation


# static fields
.field static final zztV:I


# instance fields
.field zzmu:Lcom/google/android/gms/internal/zzic;

.field private final zzoi:Landroid/app/Activity;

.field zztW:Lcom/google/android/gms/internal/zzeo;

.field zztX:Lcom/google/android/gms/internal/zzeq;

.field zztY:Lcom/google/android/gms/internal/zzel$zzc;

.field zztZ:Lcom/google/android/gms/internal/zzer;

.field zzts:Landroid/widget/RelativeLayout;

.field zzua:Z

.field zzub:Landroid/widget/FrameLayout;

.field zzuc:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field zzud:Z

.field zzue:Z

.field zzuf:Z

.field zzug:I

.field private zzuh:Z

.field private zzui:Z

.field private zzuj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzel;->zztV:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzev$zza;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzua:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzud:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzue:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuf:Z

    iput v0, p0, Lcom/google/android/gms/internal/zzel;->zzug:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzui:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuj:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    return-void
.end method

.method static zzd(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzel;->zzug:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzud:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeo;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/internal/zzeo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzel$zza;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzel$zza;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzel$zza; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzel$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/internal/zzel;->zzug:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shouldCallOnOverlayOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuj:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuz:Lcom/google/android/gms/internal/zzx;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuz:Lcom/google/android/gms/internal/zzx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzx;->zzml:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzue:Z

    :goto_1
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzup:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuj:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzup:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->zzag()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuw:I

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuo:Lcom/google/android/gms/internal/zzat;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuo:Lcom/google/android/gms/internal/zzat;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzat;->onAdClicked()V

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzel$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeo;->zzuy:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzel$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuw:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/google/android/gms/internal/zzel$zza;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzel$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzue:Z

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzel;->zzt(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzel$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeo;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzel$zzc;-><init>(Lcom/google/android/gms/internal/zzic;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztY:Lcom/google/android/gms/internal/zzel$zzc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzel;->zzt(Z)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzel;->zzt(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzud:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzel;->zzug:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaJ()Lcom/google/android/gms/internal/zzei;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeo;->zzun:Lcom/google/android/gms/internal/zzek;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzeo;->zzuv:Lcom/google/android/gms/internal/zzes;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzei;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzek;Lcom/google/android/gms/internal/zzes;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzel;->zzug:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzel$zza; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeq;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzdf()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeq;->pause()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzdc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztY:Lcom/google/android/gms/internal/zzel$zzc;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaO()Lcom/google/android/gms/internal/zzhp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhp;->zza(Landroid/webkit/WebView;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzdf()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuw:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzud:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzel;->zzug:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaO()Lcom/google/android/gms/internal/zzhp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhp;->zzb(Landroid/webkit/WebView;)Z

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzud:Z

    goto :goto_0

    :cond_2
    const-string v0, "The webview does not exit. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzel;->zzud:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzdf()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public zzX()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuh:Z

    return-void
.end method

.method public zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzub:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzub:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzub:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzub:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzX()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzel;->zzuc:Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzua:Z

    return-void
.end method

.method public zza(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztZ:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztZ:Lcom/google/android/gms/internal/zzer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzer;->zza(ZZ)V

    :cond_0
    return-void
.end method

.method public zzdb()Lcom/google/android/gms/internal/zzeq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    return-object v0
.end method

.method public zzdc()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzua:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzel;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzub:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzub:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzel;->zzub:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzuc:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzuc:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzel;->zzuc:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzua:Z

    return-void
.end method

.method public zzdd()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzel;->zzug:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public zzde()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zztZ:Lcom/google/android/gms/internal/zzer;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzel;->zzs(Z)V

    return-void
.end method

.method protected zzdf()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzui:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzui:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzel;->zzug:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzel;->zzp(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztY:Lcom/google/android/gms/internal/zzel$zzc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zztY:Lcom/google/android/gms/internal/zzel$zzc;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzel$zzc;->zzlN:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzic;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzic;->zzA(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztY:Lcom/google/android/gms/internal/zzel$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzel$zzc;->zzum:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zztY:Lcom/google/android/gms/internal/zzel$zzc;

    iget v2, v2, Lcom/google/android/gms/internal/zzel$zzc;->index:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzel;->zztY:Lcom/google/android/gms/internal/zzel$zzc;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzel$zzc;->zzul:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztY:Lcom/google/android/gms/internal/zzel$zzc;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzup:Lcom/google/android/gms/internal/zzep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzup:Lcom/google/android/gms/internal/zzep;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzep;->zzaf()V

    goto :goto_0
.end method

.method public zzdg()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzdh()V

    :cond_0
    return-void
.end method

.method protected zzdh()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzdh()V

    return-void
.end method

.method public zze(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzel;->zzd(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzeq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public zzf(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzeq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzeq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzic;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zztX:Lcom/google/android/gms/internal/zzeq;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzel;->zzd(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzid;->zzC(Z)V

    :cond_0
    return-void
.end method

.method protected zzp(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzic;->zzp(I)V

    return-void
.end method

.method public zzs(Z)V
    .locals 4

    const/4 v3, -0x2

    if-eqz p1, :cond_0

    const/16 v0, 0x32

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzer;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/gms/internal/zzer;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/zzet;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzel;->zztZ:Lcom/google/android/gms/internal/zzer;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_1

    const/16 v0, 0xb

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztZ:Lcom/google/android/gms/internal/zzer;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzeo;->zzut:Z

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzer;->zza(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zztZ:Lcom/google/android/gms/internal/zzer;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_1
.end method

.method protected zzt(Z)V
    .locals 15

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuh:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzel$zza;

    const-string v1, "Invalid activity, no window available."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzel$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzue:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuz:Lcom/google/android/gms/internal/zzx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuz:Lcom/google/android/gms/internal/zzx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzx;->zzmy:Z

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x400

    const/16 v2, 0x400

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->orientation:I

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaO()Lcom/google/android/gms/internal/zzhp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhp;->zzex()I

    move-result v2

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuf:Z

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Delay onShow to next orientation change: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzel;->zzuf:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzel;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaO()Lcom/google/android/gms/internal/zzhp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhp;->zza(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzue:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzid;->zzba()Z

    move-result v4

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaN()Lcom/google/android/gms/internal/zzie;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzeo;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzic;->zzad()Lcom/google/android/gms/internal/zzba;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzeo;->zzlP:Lcom/google/android/gms/internal/zzhy;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzie;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;ZZLcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzhy;)Lcom/google/android/gms/internal/zzic;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzeo;->zzur:Lcom/google/android/gms/internal/zzct;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v9, v0, Lcom/google/android/gms/internal/zzeo;->zzuv:Lcom/google/android/gms/internal/zzes;

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v11, v0, Lcom/google/android/gms/internal/zzeo;->zzux:Lcom/google/android/gms/internal/zzcw;

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzid;->zzeM()Lcom/google/android/gms/internal/zzu;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/gms/internal/zzid;->zzb(Lcom/google/android/gms/internal/zzat;Lcom/google/android/gms/internal/zzep;Lcom/google/android/gms/internal/zzct;Lcom/google/android/gms/internal/zzes;ZLcom/google/android/gms/internal/zzcw;Lcom/google/android/gms/internal/zzcy;Lcom/google/android/gms/internal/zzu;Lcom/google/android/gms/internal/zzeh;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeG()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzel$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzel$1;-><init>(Lcom/google/android/gms/internal/zzel;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzid$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zztR:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzeo;->zztR:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzic;->loadUrl(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzic;->zza(Lcom/google/android/gms/internal/zzel;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzue:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    sget v1, Lcom/google/android/gms/internal/zzel;->zztV:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzic;->setBackgroundColor(I)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuf:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzel;->zzdh()V

    :cond_8
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzel;->zzs(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeH()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/internal/zzel;->zza(ZZ)V

    :cond_9
    return-void

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget v0, v0, Lcom/google/android/gms/internal/zzeo;->orientation:I

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaO()Lcom/google/android/gms/internal/zzhp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhp;->zzey()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzel;->zzuf:Z

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzts:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/gms/internal/zzel;->zztV:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuu:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v5, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzeo;->zzus:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzeo;->zzuu:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/zzic;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/zzel$zza;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzel$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zztW:Lcom/google/android/gms/internal/zzeo;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzeo;->zzuq:Lcom/google/android/gms/internal/zzic;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzel;->zzmu:Lcom/google/android/gms/internal/zzic;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzel;->zzoi:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzic;->setContext(Landroid/content/Context;)V

    goto/16 :goto_3
.end method
