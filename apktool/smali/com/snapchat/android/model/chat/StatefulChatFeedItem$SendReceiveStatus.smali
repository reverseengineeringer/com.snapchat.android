.class public final enum Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/StatefulChatFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendReceiveStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

.field public static final enum FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

.field public static final enum FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

.field public static final enum FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

.field public static final enum RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

.field public static final enum RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

.field public static final enum SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

.field public static final enum SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

.field public static final enum UNKNOWN:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->UNKNOWN:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 27
    new-instance v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 28
    new-instance v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    const-string v1, "RECEIVING"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 29
    new-instance v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 30
    new-instance v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 31
    new-instance v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    const-string v1, "SENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 32
    new-instance v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    const-string v1, "FAILED_AND_USER_NOTIFIED_OF_FAILURE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 33
    new-instance v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    const-string v1, "FAILED_AND_NON_RECOVERABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->UNKNOWN:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENT:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->$VALUES:[Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->$VALUES:[Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    return-object v0
.end method
