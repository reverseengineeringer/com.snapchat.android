.class public Lcom/google/android/gms/internal/zzgv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgt$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzgt$zza",
        "<",
        "Lcom/google/android/gms/internal/zzcm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic zza(Lcom/google/android/gms/internal/zzgt;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzcn$zza;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzgv;->zzc(Lcom/google/android/gms/internal/zzgt;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzcm;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzgt;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzcm;
    .locals 7

    const-string v0, "image"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzgt;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v2

    const-string v0, "secondary_image"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzgt;->zza(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/internal/zzcm;

    const-string v1, "headline"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    const-string v3, "body"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    const-string v5, "call_to_action"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "attribution"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcm;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
