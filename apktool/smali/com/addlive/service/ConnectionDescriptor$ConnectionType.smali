.class public final enum Lcom/addlive/service/ConnectionDescriptor$ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/service/ConnectionDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/service/ConnectionDescriptor$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

.field public static final enum BROADCAST_CONSUMER:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

.field public static final enum BROADCAST_PRODUCER:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

.field public static final enum CONFERENCE:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    new-instance v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    const-string v1, "CONFERENCE"

    invoke-direct {v0, v1, v2}, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->CONFERENCE:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    .line 255
    new-instance v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    const-string v1, "BROADCAST_CONSUMER"

    invoke-direct {v0, v1, v3}, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->BROADCAST_CONSUMER:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    .line 256
    new-instance v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    const-string v1, "BROADCAST_PRODUCER"

    invoke-direct {v0, v1, v4}, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->BROADCAST_PRODUCER:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    .line 253
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    sget-object v1, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->CONFERENCE:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->BROADCAST_CONSUMER:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->BROADCAST_PRODUCER:Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->$VALUES:[Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

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
    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/service/ConnectionDescriptor$ConnectionType;
    .locals 1

    .prologue
    .line 253
    const-class v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/addlive/service/ConnectionDescriptor$ConnectionType;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->$VALUES:[Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    invoke-virtual {v0}, [Lcom/addlive/service/ConnectionDescriptor$ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/service/ConnectionDescriptor$ConnectionType;

    return-object v0
.end method
