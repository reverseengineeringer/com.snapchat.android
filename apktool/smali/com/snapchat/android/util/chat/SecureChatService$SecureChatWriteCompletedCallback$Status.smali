.class public final enum Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

.field public static final enum NOT_FRIENDS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

.field public static final enum NO_CONNECTION:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

.field public static final enum SCCP_CONNECTION_ENDED:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

.field public static final enum SCCP_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

.field public static final enum SCCP_MESSAGE_QUEUE_FULL:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

.field public static final enum SCCP_NACK:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

.field public static final enum SCCP_TIMEOUT_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

.field public static final enum SUCCESS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SUCCESS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 189
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NO_CONNECTION:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 190
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, "NOT_FRIENDS"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NOT_FRIENDS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 191
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, "SCCP_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 192
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, "SCCP_CONNECTION_ENDED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_CONNECTION_ENDED:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 193
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, "SCCP_TIMEOUT_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_TIMEOUT_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 194
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, "SCCP_NACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_NACK:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 195
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v1, "SCCP_MESSAGE_QUEUE_FULL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_MESSAGE_QUEUE_FULL:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    .line 187
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SUCCESS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NO_CONNECTION:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->NOT_FRIENDS:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_CONNECTION_ENDED:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_TIMEOUT_ERROR:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_NACK:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_MESSAGE_QUEUE_FULL:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->$VALUES:[Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

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
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;
    .locals 1

    .prologue
    .line 187
    const-class v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->$VALUES:[Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    return-object v0
.end method
