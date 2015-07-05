.class public final enum Lcom/addlive/service/ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/service/ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/service/ConnectionType;

.field public static final enum NOT_CONNECTED:Lcom/addlive/service/ConnectionType;

.field public static final enum TCP_RELAY:Lcom/addlive/service/ConnectionType;

.field public static final enum UDP_P2P:Lcom/addlive/service/ConnectionType;

.field public static final enum UDP_RELAY:Lcom/addlive/service/ConnectionType;


# instance fields
.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/addlive/service/ConnectionType;

    const-string v1, "NOT_CONNECTED"

    const-string v2, "MEDIA_TRANSPORT_TYPE_NOT_CONNECTED"

    invoke-direct {v0, v1, v3, v2}, Lcom/addlive/service/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/ConnectionType;->NOT_CONNECTED:Lcom/addlive/service/ConnectionType;

    .line 31
    new-instance v0, Lcom/addlive/service/ConnectionType;

    const-string v1, "UDP_RELAY"

    const-string v2, "MEDIA_TRANSPORT_TYPE_UDP_RELAY"

    invoke-direct {v0, v1, v4, v2}, Lcom/addlive/service/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/ConnectionType;->UDP_RELAY:Lcom/addlive/service/ConnectionType;

    .line 37
    new-instance v0, Lcom/addlive/service/ConnectionType;

    const-string v1, "UDP_P2P"

    const-string v2, "MEDIA_TRANSPORT_TYPE_UDP_P2P"

    invoke-direct {v0, v1, v5, v2}, Lcom/addlive/service/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/ConnectionType;->UDP_P2P:Lcom/addlive/service/ConnectionType;

    .line 43
    new-instance v0, Lcom/addlive/service/ConnectionType;

    const-string v1, "TCP_RELAY"

    const-string v2, "MEDIA_TRANSPORT_TYPE_TCP_RELAY"

    invoke-direct {v0, v1, v6, v2}, Lcom/addlive/service/ConnectionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/addlive/service/ConnectionType;->TCP_RELAY:Lcom/addlive/service/ConnectionType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/addlive/service/ConnectionType;

    sget-object v1, Lcom/addlive/service/ConnectionType;->NOT_CONNECTED:Lcom/addlive/service/ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addlive/service/ConnectionType;->UDP_RELAY:Lcom/addlive/service/ConnectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/addlive/service/ConnectionType;->UDP_P2P:Lcom/addlive/service/ConnectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/addlive/service/ConnectionType;->TCP_RELAY:Lcom/addlive/service/ConnectionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/addlive/service/ConnectionType;->$VALUES:[Lcom/addlive/service/ConnectionType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/addlive/service/ConnectionType;->stringValue:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/addlive/service/ConnectionType;
    .locals 5

    .prologue
    .line 52
    invoke-static {}, Lcom/addlive/service/ConnectionType;->values()[Lcom/addlive/service/ConnectionType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 53
    iget-object v4, v0, Lcom/addlive/service/ConnectionType;->stringValue:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    :goto_1
    return-object v0

    .line 52
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/addlive/service/ConnectionType;->NOT_CONNECTED:Lcom/addlive/service/ConnectionType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/service/ConnectionType;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/addlive/service/ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/addlive/service/ConnectionType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/addlive/service/ConnectionType;->$VALUES:[Lcom/addlive/service/ConnectionType;

    invoke-virtual {v0}, [Lcom/addlive/service/ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/service/ConnectionType;

    return-object v0
.end method
