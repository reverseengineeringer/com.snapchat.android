.class public final enum Lcom/snapchat/android/model/Snap$ClientSnapStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Snap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientSnapStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Snap$ClientSnapStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum DELIVERED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum FRIEND_REQUEST:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum LOADING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum PENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum RECEIVED_AND_STARTED_VIEWING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum UNVIEWED_AND_LOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum UNVIEWED_AND_LOAD_STATE_TBD:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum UNVIEWED_AND_UNLOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

.field public static final enum VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "RECEIVED_AND_VIEWED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 61
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 63
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 65
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 67
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "DELIVERED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->DELIVERED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 69
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->PENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 71
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "SENT_AND_OPENED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 73
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "SENT_AND_SCREENSHOTTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 75
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "UNVIEWED_AND_LOAD_STATE_TBD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOAD_STATE_TBD:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 77
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "UNVIEWED_AND_UNLOADED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_UNLOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 79
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "UNVIEWED_AND_LOADED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 81
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "LOADING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->LOADING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 83
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "FRIEND_REQUEST"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FRIEND_REQUEST:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 85
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "VIEWED_AND_REPLAY_AVAILABLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 87
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "SENT_AND_REPLAYED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 89
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "SENT_AND_REPLAYED_AND_SCREENSHOTTED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 91
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "RECEIVED_AND_REPLAYED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 93
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "FAILED_AND_USER_NOTIFIED_OF_FAILURE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 95
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "FAILED_AND_NON_RECOVERABLE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 97
    new-instance v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    const-string v1, "RECEIVED_AND_STARTED_VIEWING"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_STARTED_VIEWING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 57
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->DELIVERED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->PENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOAD_STATE_TBD:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_UNLOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->LOADING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FRIEND_REQUEST:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_USER_NOTIFIED_OF_FAILURE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->FAILED_AND_NON_RECOVERABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_STARTED_VIEWING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->$VALUES:[Lcom/snapchat/android/model/Snap$ClientSnapStatus;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;
    .locals 5

    .prologue
    .line 101
    invoke-static {}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->values()[Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 102
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    :goto_1
    return-object v0

    .line 101
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Snap$ClientSnapStatus;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->$VALUES:[Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Snap$ClientSnapStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    return-object v0
.end method
