.class Lcom/google/android/gms/internal/zzaf$6;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaf;->zzbb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zznI:Lcom/google/android/gms/internal/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaf$6;->zznI:Lcom/google/android/gms/internal/zzaf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$6;->zznI:Lcom/google/android/gms/internal/zzaf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaf;->zzh(Z)V

    return-void
.end method
