.class public final enum Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum FAILED_TO_LOAD:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum LOADED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum LOADING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum RECEIVED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum SENT:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum VIEWED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

.field public static final enum VIEWING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;


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
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->RECEIVED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 11
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "VIEWING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 12
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "VIEWED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 13
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 14
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENT:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 15
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "FAILED_TO_SEND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 16
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "LOADING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->LOADING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 17
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "LOADED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->LOADED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 18
    new-instance v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    const-string v1, "FAILED_TO_LOAD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_LOAD:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->RECEIVED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->VIEWED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENT:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->LOADING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->LOADED:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_LOAD:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->$VALUES:[Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->$VALUES:[Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {v0}, [Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    return-object v0
.end method
