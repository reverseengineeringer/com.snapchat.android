.class public final enum Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/ProfileEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfilePageMetricsBoolean"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

.field public static final enum No:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

.field public static final enum Yes:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    const-string v1, "Yes"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->Yes:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    .line 213
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    const-string v1, "No"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->No:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->Yes:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->No:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->$VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

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
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromValue(Z)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;
    .locals 1

    .prologue
    .line 216
    if-eqz p0, :cond_0

    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->Yes:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->No:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;
    .locals 1

    .prologue
    .line 211
    const-class v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->$VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsBoolean;

    return-object v0
.end method
