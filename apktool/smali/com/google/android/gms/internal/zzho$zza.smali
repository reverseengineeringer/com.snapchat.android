.class final Lcom/google/android/gms/internal/zzho$zza;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzzs:Lcom/google/android/gms/internal/zzho;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzho;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzho$zza;->zzzs:Lcom/google/android/gms/internal/zzho;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzho;Lcom/google/android/gms/internal/zzho$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzho$zza;-><init>(Lcom/google/android/gms/internal/zzho;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-static {p1}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho$zza;->zzzs:Lcom/google/android/gms/internal/zzho;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzho;->zza(Lcom/google/android/gms/internal/zzho;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzho$zza;->zzzs:Lcom/google/android/gms/internal/zzho;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzho;->zza(Lcom/google/android/gms/internal/zzho;Z)Z

    goto :goto_0
.end method
