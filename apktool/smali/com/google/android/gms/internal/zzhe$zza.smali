.class public final Lcom/google/android/gms/internal/zzhe$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzlV:Lcom/google/android/gms/internal/zzba;

.field public final zzys:Lorg/json/JSONObject;

.field public final zzyt:Lcom/google/android/gms/internal/zzdk;

.field public final zzyv:J

.field public final zzyw:J

.field public final zzyy:Lcom/google/android/gms/internal/zzgo;

.field public final zzyz:Lcom/google/android/gms/internal/zzgq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzgo;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzba;IJJLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhe$zza;->zzyy:Lcom/google/android/gms/internal/zzgo;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhe$zza;->zzyz:Lcom/google/android/gms/internal/zzgq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhe$zza;->zzyt:Lcom/google/android/gms/internal/zzdk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzhe$zza;->zzlV:Lcom/google/android/gms/internal/zzba;

    iput p5, p0, Lcom/google/android/gms/internal/zzhe$zza;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzhe$zza;->zzyv:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzhe$zza;->zzyw:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzhe$zza;->zzys:Lorg/json/JSONObject;

    return-void
.end method
