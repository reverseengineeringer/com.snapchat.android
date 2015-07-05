.class public final enum Lcom/google/android/gms/analytics/zzi;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/analytics/zzi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzBA:Lcom/google/android/gms/analytics/zzi;

.field private static final synthetic zzBB:[Lcom/google/android/gms/analytics/zzi;

.field public static final enum zzBv:Lcom/google/android/gms/analytics/zzi;

.field public static final enum zzBw:Lcom/google/android/gms/analytics/zzi;

.field public static final enum zzBx:Lcom/google/android/gms/analytics/zzi;

.field public static final enum zzBy:Lcom/google/android/gms/analytics/zzi;

.field public static final enum zzBz:Lcom/google/android/gms/analytics/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/analytics/zzi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->zzBv:Lcom/google/android/gms/analytics/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    const-string v1, "BATCH_BY_SESSION"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/analytics/zzi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->zzBw:Lcom/google/android/gms/analytics/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    const-string v1, "BATCH_BY_TIME"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/analytics/zzi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->zzBx:Lcom/google/android/gms/analytics/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    const-string v1, "BATCH_BY_BRUTE_FORCE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/analytics/zzi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->zzBy:Lcom/google/android/gms/analytics/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    const-string v1, "BATCH_BY_COUNT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/gms/analytics/zzi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->zzBz:Lcom/google/android/gms/analytics/zzi;

    new-instance v0, Lcom/google/android/gms/analytics/zzi;

    const-string v1, "BATCH_BY_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/zzi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->zzBA:Lcom/google/android/gms/analytics/zzi;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/gms/analytics/zzi;

    sget-object v1, Lcom/google/android/gms/analytics/zzi;->zzBv:Lcom/google/android/gms/analytics/zzi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/analytics/zzi;->zzBw:Lcom/google/android/gms/analytics/zzi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/analytics/zzi;->zzBx:Lcom/google/android/gms/analytics/zzi;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/analytics/zzi;->zzBy:Lcom/google/android/gms/analytics/zzi;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/analytics/zzi;->zzBz:Lcom/google/android/gms/analytics/zzi;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/analytics/zzi;->zzBA:Lcom/google/android/gms/analytics/zzi;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/analytics/zzi;->zzBB:[Lcom/google/android/gms/analytics/zzi;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/analytics/zzi;
    .locals 1

    const-class v0, Lcom/google/android/gms/analytics/zzi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzi;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/analytics/zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/zzi;->zzBB:[Lcom/google/android/gms/analytics/zzi;

    invoke-virtual {v0}, [Lcom/google/android/gms/analytics/zzi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/analytics/zzi;

    return-object v0
.end method
