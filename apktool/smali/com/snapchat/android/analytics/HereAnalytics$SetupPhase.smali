.class public final enum Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/HereAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetupPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

.field public static final enum HERE_ADL_CONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

.field public static final enum HERE_ADL_REMOTE_PEER_JOINED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

.field public static final enum HERE_AVAILABLE:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

.field public static final enum HERE_CONFIRMED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

.field public static final enum HERE_PUBLISHED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    const-string v1, "HERE_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_AVAILABLE:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    .line 44
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    const-string v1, "HERE_ADL_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_CONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    .line 47
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    const-string v1, "HERE_ADL_REMOTE_PEER_JOINED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_REMOTE_PEER_JOINED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    .line 50
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    const-string v1, "HERE_PUBLISHED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_PUBLISHED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    .line 53
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    const-string v1, "HERE_CONFIRMED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_CONFIRMED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_AVAILABLE:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_CONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_ADL_REMOTE_PEER_JOINED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_PUBLISHED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_CONFIRMED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->$VALUES:[Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->$VALUES:[Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    return-object v0
.end method
