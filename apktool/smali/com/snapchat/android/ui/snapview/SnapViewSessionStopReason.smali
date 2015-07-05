.class public final enum Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum DELETED_SNAP:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum ERROR_STARTING_MEDIA_UNAVAILABLE_FROM_SERVER:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum ERROR_UNABLE_TO_SHOW_MEDIA:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum SKIP_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum TIMER_EXPIRED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field public static final enum UNFILLED_AD_PLACEHOLDER:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "ERROR_STARTING_MEDIA_UNAVAILABLE_FROM_SERVER"

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_FROM_SERVER:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 14
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY"

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 18
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "ERROR_UNABLE_TO_SHOW_MEDIA"

    invoke-direct {v0, v1, v5, v4, v4}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_UNABLE_TO_SHOW_MEDIA:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 22
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "TIMER_EXPIRED"

    invoke-direct {v0, v1, v6, v4, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->TIMER_EXPIRED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 26
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "ABORT_REQUESTED"

    invoke-direct {v0, v1, v7, v3, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 30
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "SKIP_REQUESTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->SKIP_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 34
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "UNFILLED_AD_PLACEHOLDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->UNFILLED_AD_PLACEHOLDER:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 38
    new-instance v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    const-string v1, "DELETED_SNAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->DELETED_SNAP:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_FROM_SERVER:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_STARTING_MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ERROR_UNABLE_TO_SHOW_MEDIA:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->TIMER_EXPIRED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->ABORT_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->SKIP_REQUESTED:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->UNFILLED_AD_PLACEHOLDER:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->DELETED_SNAP:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->$VALUES:[Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-boolean p3, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->a:Z

    .line 45
    iput-boolean p4, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->b:Z

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->$VALUES:[Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    return-object v0
.end method


# virtual methods
.method public final isErrorReason()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->b:Z

    return v0
.end method

.method public final shouldFinishSnap()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;->a:Z

    return v0
.end method
