.class Lcom/google/android/gms/internal/zzhg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhg;->zza(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzyX:Ljava/lang/Thread;

.field final synthetic zzyY:Lcom/google/android/gms/internal/zzhg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhg;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg$1;->zzyY:Lcom/google/android/gms/internal/zzhg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhg$1;->zzyX:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg$1;->zzyY:Lcom/google/android/gms/internal/zzhg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhg;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg$1;->zzyX:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhg$1;->zzyY:Lcom/google/android/gms/internal/zzhg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzhg;->zzb(Lcom/google/android/gms/internal/zzhg;)Lcom/google/android/gms/internal/zzhy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh;->zza(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/internal/zzhy;)Lcom/google/android/gms/internal/zzgh;

    return-void
.end method
