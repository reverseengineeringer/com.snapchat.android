.class public final Lcom/google/android/gms/internal/zzlp$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static zzRA:Lcom/google/android/gms/internal/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzki",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzRB:Lcom/google/android/gms/internal/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzki",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzRC:Lcom/google/android/gms/internal/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzki",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzRD:Lcom/google/android/gms/internal/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzki",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzRE:Lcom/google/android/gms/internal/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzki",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzRy:Lcom/google/android/gms/internal/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzki",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzRz:Lcom/google/android/gms/internal/zzki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzki",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gms:common:stats:logging:debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzki;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRy:Lcom/google/android/gms/internal/zzki;

    const-string v0, "gms:common:stats:logging:level"

    sget v1, Lcom/google/android/gms/internal/zzlq;->zzRF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzki;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRz:Lcom/google/android/gms/internal/zzki;

    const-string v0, "gms:common:stats:logging:ignored_calling_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzki;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRA:Lcom/google/android/gms/internal/zzki;

    const-string v0, "gms:common:stats:logging:ignored_calling_services"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzki;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRB:Lcom/google/android/gms/internal/zzki;

    const-string v0, "gms:common:stats:logging:ignored_target_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzki;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRC:Lcom/google/android/gms/internal/zzki;

    const-string v0, "gms:common:stats:logging:ignored_target_services"

    const-string v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzki;->zzp(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRD:Lcom/google/android/gms/internal/zzki;

    const-string v0, "gms:common:stats:logging:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzki;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzki;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzlp$zza;->zzRE:Lcom/google/android/gms/internal/zzki;

    return-void
.end method
