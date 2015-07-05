.class Lcom/google/android/gms/internal/zzaf$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzia$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaf;->zza(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzia$zzd",
        "<",
        "Lcom/google/android/gms/internal/zzah;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zznI:Lcom/google/android/gms/internal/zzaf;

.field final synthetic zznJ:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaf;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaf$10;->zznI:Lcom/google/android/gms/internal/zzaf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaf$10;->zznJ:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzah;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$10;->zzb(Lcom/google/android/gms/internal/zzah;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzah;)V
    .locals 2

    const-string v0, "AFMA_updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$10;->zznJ:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzah;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
