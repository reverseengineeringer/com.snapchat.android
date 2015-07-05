.class public final enum Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddFriendSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field public static final enum ADDED_BY_NEARBY:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field public static final enum ADDED_ME_BACK:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field public static final enum CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field public static final enum QR_CODE:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field public static final enum USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;


# instance fields
.field private final mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    const-string v1, "CONTACTS"

    sget-object v2, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_PHONE:Lcom/snapchat/android/model/Friend$AddSourceType;

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;-><init>(Ljava/lang/String;ILcom/snapchat/android/model/Friend$AddSourceType;)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 112
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    const-string v1, "USERNAME"

    sget-object v2, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_USERNAME:Lcom/snapchat/android/model/Friend$AddSourceType;

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;-><init>(Ljava/lang/String;ILcom/snapchat/android/model/Friend$AddSourceType;)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 113
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    const-string v1, "QR_CODE"

    sget-object v2, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_QR_CODE:Lcom/snapchat/android/model/Friend$AddSourceType;

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;-><init>(Ljava/lang/String;ILcom/snapchat/android/model/Friend$AddSourceType;)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->QR_CODE:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 114
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    const-string v1, "ADDED_ME_BACK"

    sget-object v2, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_ADDED_ME_BACK:Lcom/snapchat/android/model/Friend$AddSourceType;

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;-><init>(Ljava/lang/String;ILcom/snapchat/android/model/Friend$AddSourceType;)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_ME_BACK:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 115
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    const-string v1, "ADDED_BY_NEARBY"

    sget-object v2, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_NEARBY:Lcom/snapchat/android/model/Friend$AddSourceType;

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;-><init>(Ljava/lang/String;ILcom/snapchat/android/model/Friend$AddSourceType;)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_BY_NEARBY:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->QR_CODE:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_ME_BACK:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_BY_NEARBY:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/snapchat/android/model/Friend$AddSourceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend$AddSourceType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput-object p3, p0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 122
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    return-object v0
.end method


# virtual methods
.method public final getAddSourceType()Lcom/snapchat/android/model/Friend$AddSourceType;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    return-object v0
.end method
