.class public final enum Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaitTimeMetricState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

.field public static final enum NOT_STARTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

.field public static final enum REPORTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

.field public static final enum TIMING:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->NOT_STARTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    .line 30
    new-instance v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    const-string v1, "TIMING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->TIMING:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    .line 34
    new-instance v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    const-string v1, "REPORTED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->REPORTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    sget-object v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->NOT_STARTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->TIMING:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->REPORTED:Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->$VALUES:[Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->$VALUES:[Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/analytics/EditionPerformanceAnalytics$WaitTimeMetricState;

    return-object v0
.end method
