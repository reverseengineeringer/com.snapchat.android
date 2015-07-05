.class Lcom/google/android/gms/analytics/zzx$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/zzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzCP:Lcom/google/android/gms/analytics/zzx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/zzx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzx$zza;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/zzx;Lcom/google/android/gms/analytics/zzx$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/zzx$zza;-><init>(Lcom/google/android/gms/analytics/zzx;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzx$zza;->zzCP:Lcom/google/android/gms/analytics/zzx;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzx;->zzd(Lcom/google/android/gms/analytics/zzx;)Lcom/google/android/gms/analytics/zzak;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzak;->zzfa()V

    return-void
.end method
