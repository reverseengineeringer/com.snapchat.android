.class public final Lcom/google/android/gms/internal/zzad;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zznc:Ljava/lang/String;

.field private final zznd:Lorg/json/JSONObject;

.field private final zzne:Ljava/lang/String;

.field private final zznf:Ljava/lang/String;

.field private final zzng:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzhy;Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzhy;->zzzH:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad;->zznf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzad;->zznd:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzad;->zzne:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzad;->zznc:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzad;->zzng:Z

    return-void
.end method


# virtual methods
.method public final zzaW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad;->zznc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad;->zznf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzaY()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad;->zznd:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final zzaZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad;->zzne:Ljava/lang/String;

    return-object v0
.end method

.method public final zzba()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzad;->zzng:Z

    return v0
.end method
