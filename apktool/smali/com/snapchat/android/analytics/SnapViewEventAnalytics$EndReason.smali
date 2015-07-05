.class public final enum Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

.field public static final enum BACK_PRESSED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

.field public static final enum ENTER_BACKGROUND:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

.field public static final enum ERROR:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

.field public static final enum FINISHED_VIEWING:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

.field public static final enum KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

.field public static final enum SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

.field public static final enum TAP_PAST_END:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;


# instance fields
.field private final mEventName:Ljava/lang/String;

.field private final mExitEvent:Lhl;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    const-string v1, "FINISHED_VIEWING"

    const-string v2, "finished_viewing"

    sget-object v3, Lhl;->AUTO_ADVANCE:Lhl;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;-><init>(Ljava/lang/String;ILjava/lang/String;Lhl;)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->FINISHED_VIEWING:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 25
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    const-string v1, "TAP_PAST_END"

    const-string v2, "finished_viewing"

    sget-object v3, Lhl;->TAP:Lhl;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;-><init>(Ljava/lang/String;ILjava/lang/String;Lhl;)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->TAP_PAST_END:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 26
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    const-string v1, "SWIPED_DOWN"

    const-string v2, "user_exited"

    sget-object v3, Lhl;->SWIPE_DOWN:Lhl;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;-><init>(Ljava/lang/String;ILjava/lang/String;Lhl;)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 27
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    const-string v1, "BACK_PRESSED"

    const-string v2, "back_pressed"

    sget-object v3, Lhl;->BACK_PRESSED:Lhl;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;-><init>(Ljava/lang/String;ILjava/lang/String;Lhl;)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->BACK_PRESSED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 28
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    const-string v1, "KICKED_OUT"

    const-string v2, "kicked_out"

    sget-object v3, Lhl;->ERROR:Lhl;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;-><init>(Ljava/lang/String;ILjava/lang/String;Lhl;)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 29
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    const-string v1, "ENTER_BACKGROUND"

    const/4 v2, 0x5

    const-string v3, "enter_background"

    sget-object v4, Lhl;->ENTER_BACKGROUND:Lhl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;-><init>(Ljava/lang/String;ILjava/lang/String;Lhl;)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->ENTER_BACKGROUND:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 30
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    const-string v3, "error"

    sget-object v4, Lhl;->ERROR:Lhl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;-><init>(Ljava/lang/String;ILjava/lang/String;Lhl;)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->ERROR:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->FINISHED_VIEWING:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->TAP_PAST_END:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->SWIPED_DOWN:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->BACK_PRESSED:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->KICKED_OUT:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->ENTER_BACKGROUND:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->ERROR:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->$VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lhl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lhl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->mEventName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->mExitEvent:Lhl;

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->$VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;

    return-object v0
.end method


# virtual methods
.method public final getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExitEvent()Lhl;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$EndReason;->mExitEvent:Lhl;

    return-object v0
.end method
