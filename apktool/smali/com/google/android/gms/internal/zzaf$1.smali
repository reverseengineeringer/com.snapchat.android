.class Lcom/google/android/gms/internal/zzaf$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzia$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaf;-><init>(Lcom/google/android/gms/internal/zzba;Lcom/google/android/gms/internal/zzhe;Lcom/google/android/gms/internal/zzhy;Landroid/view/View;Lcom/google/android/gms/internal/zzdf;)V
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
.field final synthetic zznH:Lorg/json/JSONObject;

.field final synthetic zznI:Lcom/google/android/gms/internal/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaf;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaf$1;->zznI:Lcom/google/android/gms/internal/zzaf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaf$1;->zznH:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzah;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$1;->zzb(Lcom/google/android/gms/internal/zzah;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzah;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$1;->zznI:Lcom/google/android/gms/internal/zzaf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$1;->zznH:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaf;->zza(Lorg/json/JSONObject;)V

    return-void
.end method
