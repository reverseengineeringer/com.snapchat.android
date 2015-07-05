.class public final enum Lcom/snapchat/android/ui/here/DisconnectReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/here/DisconnectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/ui/here/DisconnectReason;

.field public static final enum ADL_RELEASE:Lcom/snapchat/android/ui/here/DisconnectReason;

.field public static final enum ALREADY_CONNECTED_TO_DIFFERENT_SCOPE:Lcom/snapchat/android/ui/here/DisconnectReason;

.field public static final enum CONNECTION_LOST:Lcom/snapchat/android/ui/here/DisconnectReason;

.field public static final enum HERE_BTN_RELEASED:Lcom/snapchat/android/ui/here/DisconnectReason;

.field public static final enum L2S_SWIPE_OUT:Lcom/snapchat/android/ui/here/DisconnectReason;

.field public static final enum REMOTE_PEER_LEFT:Lcom/snapchat/android/ui/here/DisconnectReason;

.field public static final enum SWIPE_CASH:Lcom/snapchat/android/ui/here/DisconnectReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    const-string v1, "HERE_BTN_RELEASED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/here/DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->HERE_BTN_RELEASED:Lcom/snapchat/android/ui/here/DisconnectReason;

    .line 5
    new-instance v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    const-string v1, "L2S_SWIPE_OUT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/here/DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->L2S_SWIPE_OUT:Lcom/snapchat/android/ui/here/DisconnectReason;

    .line 6
    new-instance v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    const-string v1, "REMOTE_PEER_LEFT"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/ui/here/DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->REMOTE_PEER_LEFT:Lcom/snapchat/android/ui/here/DisconnectReason;

    .line 7
    new-instance v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    const-string v1, "SWIPE_CASH"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/ui/here/DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->SWIPE_CASH:Lcom/snapchat/android/ui/here/DisconnectReason;

    .line 8
    new-instance v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    const-string v1, "CONNECTION_LOST"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/ui/here/DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->CONNECTION_LOST:Lcom/snapchat/android/ui/here/DisconnectReason;

    .line 9
    new-instance v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    const-string v1, "ALREADY_CONNECTED_TO_DIFFERENT_SCOPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/here/DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->ALREADY_CONNECTED_TO_DIFFERENT_SCOPE:Lcom/snapchat/android/ui/here/DisconnectReason;

    .line 10
    new-instance v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    const-string v1, "ADL_RELEASE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/here/DisconnectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->ADL_RELEASE:Lcom/snapchat/android/ui/here/DisconnectReason;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/snapchat/android/ui/here/DisconnectReason;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->HERE_BTN_RELEASED:Lcom/snapchat/android/ui/here/DisconnectReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->L2S_SWIPE_OUT:Lcom/snapchat/android/ui/here/DisconnectReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->REMOTE_PEER_LEFT:Lcom/snapchat/android/ui/here/DisconnectReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->SWIPE_CASH:Lcom/snapchat/android/ui/here/DisconnectReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->CONNECTION_LOST:Lcom/snapchat/android/ui/here/DisconnectReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/ui/here/DisconnectReason;->ALREADY_CONNECTED_TO_DIFFERENT_SCOPE:Lcom/snapchat/android/ui/here/DisconnectReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/ui/here/DisconnectReason;->ADL_RELEASE:Lcom/snapchat/android/ui/here/DisconnectReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->$VALUES:[Lcom/snapchat/android/ui/here/DisconnectReason;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/here/DisconnectReason;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/here/DisconnectReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/here/DisconnectReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->$VALUES:[Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/here/DisconnectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/here/DisconnectReason;

    return-object v0
.end method
