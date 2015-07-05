.class public Lcom/google/android/gms/internal/zzot;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzHg:Ljava/lang/String;

.field private final zzMh:Ljava/lang/String;

.field private zzamA:Lcom/google/android/gms/internal/zzou;

.field private final zzamz:Lcom/google/android/gms/internal/zzpm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpm",
            "<",
            "Lcom/google/android/gms/internal/zzpc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzpm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpm",
            "<",
            "Lcom/google/android/gms/internal/zzpc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzot;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzot;->zzHg:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzot;->zzamz:Lcom/google/android/gms/internal/zzpm;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzot;->zzamA:Lcom/google/android/gms/internal/zzou;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzot;->zzMh:Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzpm;)Lcom/google/android/gms/internal/zzot;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpm",
            "<",
            "Lcom/google/android/gms/internal/zzpc;",
            ">;)",
            "Lcom/google/android/gms/internal/zzot;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzot;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzot;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzpm;)V

    return-object v0
.end method
