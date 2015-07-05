.class public final enum Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeedIconPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

.field public static final enum CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

.field public static final enum FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

.field public static final enum MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

.field public static final enum NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

.field public static final enum RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

.field public static final enum RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

.field public static final enum SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

.field public static final enum UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    const-string v1, "MOST_RECENT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 16
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 17
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    const-string v1, "RECENTLY_SENT"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 18
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 19
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 20
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    const-string v1, "RECENTLY_OPENED_LAST_SNAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 21
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    const-string v1, "UNOPENED_SNAP_AVAILABLE_NEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 22
    new-instance v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    const-string v1, "CURRENTLY_TICKING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->MOST_RECENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->NEW:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_SENT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->SENDING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->FAILED:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->RECENTLY_OPENED_LAST_SNAP:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->UNOPENED_SNAP_AVAILABLE_NEXT:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->CURRENTLY_TICKING:Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->$VALUES:[Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->$VALUES:[Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconPriority;

    return-object v0
.end method
