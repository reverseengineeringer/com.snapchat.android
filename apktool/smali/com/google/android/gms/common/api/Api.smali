.class public final Lcom/google/android/gms/common/api/Api;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/Api$zza;,
        Lcom/google/android/gms/common/api/Api$zzc;,
        Lcom/google/android/gms/common/api/Api$ApiOptions;,
        Lcom/google/android/gms/common/api/Api$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzLS:Lcom/google/android/gms/common/api/Api$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzb",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final zzLT:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzLU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/common/api/Api$zzc;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zza;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzb",
            "<TC;TO;>;",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<TC;>;[",
            "Lcom/google/android/gms/common/api/Scope;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/Api;->zzLS:Lcom/google/android/gms/common/api/Api$zzb;

    iput-object p2, p0, Lcom/google/android/gms/common/api/Api;->zzLT:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzLU:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zzhT()Lcom/google/android/gms/common/api/Api$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zzb",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzLS:Lcom/google/android/gms/common/api/Api$zzb;

    return-object v0
.end method

.method public final zzhU()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzLU:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final zzhV()Lcom/google/android/gms/common/api/Api$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/Api;->zzLT:Lcom/google/android/gms/common/api/Api$zzc;

    return-object v0
.end method
