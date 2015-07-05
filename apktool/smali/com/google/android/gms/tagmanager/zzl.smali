.class Lcom/google/android/gms/tagmanager/zzl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzl$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final zzaxu:Lcom/google/android/gms/tagmanager/zzl$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzl$zza",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzl$1;-><init>(Lcom/google/android/gms/tagmanager/zzl;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzl;->zzaxu:Lcom/google/android/gms/tagmanager/zzl$zza;

    return-void
.end method


# virtual methods
.method public zza(ILcom/google/android/gms/tagmanager/zzl$zza;)Lcom/google/android/gms/tagmanager/zzk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tagmanager/zzl$zza",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/tagmanager/zzk",
            "<TK;TV;>;"
        }
    .end annotation

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzl;->zzsF()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcv;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcv;-><init>(ILcom/google/android/gms/tagmanager/zzl$zza;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzaz;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzaz;-><init>(ILcom/google/android/gms/tagmanager/zzl$zza;)V

    goto :goto_0
.end method

.method zzsF()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
