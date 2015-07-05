.class Lcom/google/android/gms/internal/zzid$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzid;->zzde()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzzY:Lcom/google/android/gms/internal/zzel;

.field final synthetic zzzZ:Lcom/google/android/gms/internal/zzid;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzid$1;->zzzZ:Lcom/google/android/gms/internal/zzid;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzid$1;->zzzY:Lcom/google/android/gms/internal/zzel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid$1;->zzzY:Lcom/google/android/gms/internal/zzel;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzel;->zzde()V

    return-void
.end method
