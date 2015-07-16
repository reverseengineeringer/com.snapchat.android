.class public final enum Lbji$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbji$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbji$a;

.field public static final enum CASH_RAIN:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_rain"
    .end annotation
.end field

.field public static final enum CASH_STATE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_state"
    .end annotation
.end field

.field public static final enum CHAT_MESSAGE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_message"
    .end annotation
.end field

.field public static final enum CONNECT:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connect"
    .end annotation
.end field

.field public static final enum CONNECT_RESPONSE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connect_response"
    .end annotation
.end field

.field public static final enum CONVERSATION_MESSAGE_RESPONSE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_message_response"
    .end annotation
.end field

.field public static final enum DISCONNECT:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disconnect"
    .end annotation
.end field

.field public static final enum ERROR:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field public static final enum INVALID_MESSAGE_TYPE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalid_message_type"
    .end annotation
.end field

.field public static final enum MESSAGE_RELEASE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_release"
    .end annotation
.end field

.field public static final enum MESSAGE_STATE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_state"
    .end annotation
.end field

.field public static final enum PING:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ping"
    .end annotation
.end field

.field public static final enum PING_RESPONSE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ping_response"
    .end annotation
.end field

.field public static final enum PRESENCE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "presence"
    .end annotation
.end field

.field public static final enum PROTOCOL_ERROR:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "protocol_error"
    .end annotation
.end field

.field public static final enum RECEIVED_SNAP:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "received_snap"
    .end annotation
.end field

.field public static final enum SNAP_STATE:Lbji$a;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snap_state"
    .end annotation
.end field

.field public static final enum UNRECOGNIZED_VALUE:Lbji$a;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lbji$a;

    const-string v1, "INVALID_MESSAGE_TYPE"

    const-string v2, "invalid_message_type"

    invoke-direct {v0, v1, v4, v2}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->INVALID_MESSAGE_TYPE:Lbji$a;

    .line 23
    new-instance v0, Lbji$a;

    const-string v1, "CONNECT"

    const-string v2, "connect"

    invoke-direct {v0, v1, v5, v2}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->CONNECT:Lbji$a;

    .line 26
    new-instance v0, Lbji$a;

    const-string v1, "DISCONNECT"

    const-string v2, "disconnect"

    invoke-direct {v0, v1, v6, v2}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->DISCONNECT:Lbji$a;

    .line 29
    new-instance v0, Lbji$a;

    const-string v1, "PRESENCE"

    const-string v2, "presence"

    invoke-direct {v0, v1, v7, v2}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->PRESENCE:Lbji$a;

    .line 32
    new-instance v0, Lbji$a;

    const-string v1, "SNAP_STATE"

    const-string v2, "snap_state"

    invoke-direct {v0, v1, v8, v2}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->SNAP_STATE:Lbji$a;

    .line 35
    new-instance v0, Lbji$a;

    const-string v1, "MESSAGE_STATE"

    const/4 v2, 0x5

    const-string v3, "message_state"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->MESSAGE_STATE:Lbji$a;

    .line 38
    new-instance v0, Lbji$a;

    const-string v1, "MESSAGE_RELEASE"

    const/4 v2, 0x6

    const-string v3, "message_release"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->MESSAGE_RELEASE:Lbji$a;

    .line 41
    new-instance v0, Lbji$a;

    const-string v1, "CHAT_MESSAGE"

    const/4 v2, 0x7

    const-string v3, "chat_message"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->CHAT_MESSAGE:Lbji$a;

    .line 44
    new-instance v0, Lbji$a;

    const-string v1, "PING"

    const/16 v2, 0x8

    const-string v3, "ping"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->PING:Lbji$a;

    .line 47
    new-instance v0, Lbji$a;

    const-string v1, "PING_RESPONSE"

    const/16 v2, 0x9

    const-string v3, "ping_response"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->PING_RESPONSE:Lbji$a;

    .line 50
    new-instance v0, Lbji$a;

    const-string v1, "ERROR"

    const/16 v2, 0xa

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->ERROR:Lbji$a;

    .line 53
    new-instance v0, Lbji$a;

    const-string v1, "PROTOCOL_ERROR"

    const/16 v2, 0xb

    const-string v3, "protocol_error"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->PROTOCOL_ERROR:Lbji$a;

    .line 56
    new-instance v0, Lbji$a;

    const-string v1, "CONVERSATION_MESSAGE_RESPONSE"

    const/16 v2, 0xc

    const-string v3, "conversation_message_response"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->CONVERSATION_MESSAGE_RESPONSE:Lbji$a;

    .line 59
    new-instance v0, Lbji$a;

    const-string v1, "CONNECT_RESPONSE"

    const/16 v2, 0xd

    const-string v3, "connect_response"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->CONNECT_RESPONSE:Lbji$a;

    .line 62
    new-instance v0, Lbji$a;

    const-string v1, "CASH_STATE"

    const/16 v2, 0xe

    const-string v3, "cash_state"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->CASH_STATE:Lbji$a;

    .line 65
    new-instance v0, Lbji$a;

    const-string v1, "CASH_RAIN"

    const/16 v2, 0xf

    const-string v3, "cash_rain"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->CASH_RAIN:Lbji$a;

    .line 68
    new-instance v0, Lbji$a;

    const-string v1, "RECEIVED_SNAP"

    const/16 v2, 0x10

    const-string v3, "received_snap"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->RECEIVED_SNAP:Lbji$a;

    .line 71
    new-instance v0, Lbji$a;

    const-string v1, "UNRECOGNIZED_VALUE"

    const/16 v2, 0x11

    const-string v3, "UNRECOGNIZED_VALUE"

    invoke-direct {v0, v1, v2, v3}, Lbji$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbji$a;->UNRECOGNIZED_VALUE:Lbji$a;

    .line 19
    const/16 v0, 0x12

    new-array v0, v0, [Lbji$a;

    sget-object v1, Lbji$a;->INVALID_MESSAGE_TYPE:Lbji$a;

    aput-object v1, v0, v4

    sget-object v1, Lbji$a;->CONNECT:Lbji$a;

    aput-object v1, v0, v5

    sget-object v1, Lbji$a;->DISCONNECT:Lbji$a;

    aput-object v1, v0, v6

    sget-object v1, Lbji$a;->PRESENCE:Lbji$a;

    aput-object v1, v0, v7

    sget-object v1, Lbji$a;->SNAP_STATE:Lbji$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lbji$a;->MESSAGE_STATE:Lbji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbji$a;->MESSAGE_RELEASE:Lbji$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbji$a;->CHAT_MESSAGE:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbji$a;->PING:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lbji$a;->PING_RESPONSE:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lbji$a;->ERROR:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lbji$a;->PROTOCOL_ERROR:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lbji$a;->CONVERSATION_MESSAGE_RESPONSE:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lbji$a;->CONNECT_RESPONSE:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lbji$a;->CASH_STATE:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lbji$a;->CASH_RAIN:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lbji$a;->RECEIVED_SNAP:Lbji$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lbji$a;->UNRECOGNIZED_VALUE:Lbji$a;

    aput-object v2, v0, v1

    sput-object v0, Lbji$a;->$VALUES:[Lbji$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lbji$a;->value:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbji$a;
    .locals 1

    .prologue
    .line 91
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbji$a;->valueOf(Ljava/lang/String;)Lbji$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lbji$a;->UNRECOGNIZED_VALUE:Lbji$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbji$a;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbji$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbji$a;

    return-object v0
.end method

.method public static values()[Lbji$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbji$a;->$VALUES:[Lbji$a;

    invoke-virtual {v0}, [Lbji$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbji$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbji$a;->value:Ljava/lang/String;

    return-object v0
.end method
