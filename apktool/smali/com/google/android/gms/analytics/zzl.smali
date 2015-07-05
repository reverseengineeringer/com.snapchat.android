.class public final enum Lcom/google/android/gms/analytics/zzl;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/analytics/zzl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzBF:Lcom/google/android/gms/analytics/zzl;

.field public static final enum zzBG:Lcom/google/android/gms/analytics/zzl;

.field private static final synthetic zzBH:[Lcom/google/android/gms/analytics/zzl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/analytics/zzl;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/zzl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/zzl;->zzBF:Lcom/google/android/gms/analytics/zzl;

    new-instance v0, Lcom/google/android/gms/analytics/zzl;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/zzl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/zzl;->zzBG:Lcom/google/android/gms/analytics/zzl;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/analytics/zzl;

    sget-object v1, Lcom/google/android/gms/analytics/zzl;->zzBF:Lcom/google/android/gms/analytics/zzl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/analytics/zzl;->zzBG:Lcom/google/android/gms/analytics/zzl;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/analytics/zzl;->zzBH:[Lcom/google/android/gms/analytics/zzl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/analytics/zzl;
    .locals 1

    const-class v0, Lcom/google/android/gms/analytics/zzl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzl;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/analytics/zzl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/zzl;->zzBH:[Lcom/google/android/gms/analytics/zzl;

    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/zzl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/analytics/zzl;

    return-object v0
.end method
