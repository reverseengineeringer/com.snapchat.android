.class Lcom/google/android/gms/internal/zzaj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zznQ:Ljava/lang/String;

.field final synthetic zznR:Lorg/json/JSONObject;

.field final synthetic zznS:Lcom/google/android/gms/internal/zzaj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaj;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaj$1;->zznS:Lcom/google/android/gms/internal/zzaj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaj$1;->zznQ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaj$1;->zznR:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaj$1;->zznS:Lcom/google/android/gms/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaj;->zza(Lcom/google/android/gms/internal/zzaj;)Lcom/google/android/gms/internal/zzic;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaj$1;->zznQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaj$1;->zznR:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzic;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
