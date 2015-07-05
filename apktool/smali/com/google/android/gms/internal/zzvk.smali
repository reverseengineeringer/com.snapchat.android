.class public Lcom/google/android/gms/internal/zzvk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzvk$zza;
    }
.end annotation


# instance fields
.field private final zzaBZ:Lcom/google/android/gms/internal/zzvk$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzvk$zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvk;->zzaBZ:Lcom/google/android/gms/internal/zzvk$zza;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvk;->zzaBZ:Lcom/google/android/gms/internal/zzvk$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvk$zza;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public zzuo()Lcom/google/android/gms/internal/zzvk$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvk;->zzaBZ:Lcom/google/android/gms/internal/zzvk$zza;

    return-object v0
.end method
