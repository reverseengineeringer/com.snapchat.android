.class public final enum Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public static final enum AUTHENTICATION_ERROR:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public static final enum EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public static final enum FAIL_TO_UPDATE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public static final enum HAS_INTERNET_BUT_CONNECTION_FAIL:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public static final enum NONE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public static final enum NO_INTERNET_CONNECTION:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public static final enum SERVER_FAILURE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field public static final enum UNAUTHORIZED:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NONE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    const-string v1, "EXTERNAL_STORAGE_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    const-string v1, "FAIL_TO_UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->FAIL_TO_UPDATE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    const-string v1, "AUTHENTICATION_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->AUTHENTICATION_ERROR:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    .line 20
    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    const-string v1, "NO_INTERNET_CONNECTION"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NO_INTERNET_CONNECTION:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    const-string v1, "HAS_INTERNET_BUT_CONNECTION_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->HAS_INTERNET_BUT_CONNECTION_FAIL:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    const-string v1, "UNAUTHORIZED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->UNAUTHORIZED:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    const-string v1, "SERVER_FAILURE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->SERVER_FAILURE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NONE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->FAIL_TO_UPDATE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->AUTHENTICATION_ERROR:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->NO_INTERNET_CONNECTION:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->HAS_INTERNET_BUT_CONNECTION_FAIL:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->UNAUTHORIZED:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->SERVER_FAILURE:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->$VALUES:[Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->$VALUES:[Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    return-object v0
.end method
