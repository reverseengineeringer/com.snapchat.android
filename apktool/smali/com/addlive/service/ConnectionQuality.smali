.class public final enum Lcom/addlive/service/ConnectionQuality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/service/ConnectionQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/service/ConnectionQuality;

.field public static final enum AVERAGE:Lcom/addlive/service/ConnectionQuality;

.field public static final enum BAD:Lcom/addlive/service/ConnectionQuality;

.field public static final enum FINE:Lcom/addlive/service/ConnectionQuality;

.field public static final enum UNKNOWN:Lcom/addlive/service/ConnectionQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/addlive/service/ConnectionQuality;

    const-string v1, "FINE"

    invoke-direct {v0, v1, v2}, Lcom/addlive/service/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/service/ConnectionQuality;->FINE:Lcom/addlive/service/ConnectionQuality;

    .line 29
    new-instance v0, Lcom/addlive/service/ConnectionQuality;

    const-string v1, "AVERAGE"

    invoke-direct {v0, v1, v3}, Lcom/addlive/service/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/service/ConnectionQuality;->AVERAGE:Lcom/addlive/service/ConnectionQuality;

    .line 35
    new-instance v0, Lcom/addlive/service/ConnectionQuality;

    const-string v1, "BAD"

    invoke-direct {v0, v1, v4}, Lcom/addlive/service/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/service/ConnectionQuality;->BAD:Lcom/addlive/service/ConnectionQuality;

    .line 40
    new-instance v0, Lcom/addlive/service/ConnectionQuality;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/addlive/service/ConnectionQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/service/ConnectionQuality;->UNKNOWN:Lcom/addlive/service/ConnectionQuality;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/addlive/service/ConnectionQuality;

    sget-object v1, Lcom/addlive/service/ConnectionQuality;->FINE:Lcom/addlive/service/ConnectionQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/addlive/service/ConnectionQuality;->AVERAGE:Lcom/addlive/service/ConnectionQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addlive/service/ConnectionQuality;->BAD:Lcom/addlive/service/ConnectionQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/addlive/service/ConnectionQuality;->UNKNOWN:Lcom/addlive/service/ConnectionQuality;

    aput-object v1, v0, v5

    sput-object v0, Lcom/addlive/service/ConnectionQuality;->$VALUES:[Lcom/addlive/service/ConnectionQuality;

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

.method public static _fromInt(I)Lcom/addlive/service/ConnectionQuality;
    .locals 1

    .prologue
    .line 51
    packed-switch p0, :pswitch_data_0

    .line 59
    sget-object v0, Lcom/addlive/service/ConnectionQuality;->UNKNOWN:Lcom/addlive/service/ConnectionQuality;

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    sget-object v0, Lcom/addlive/service/ConnectionQuality;->FINE:Lcom/addlive/service/ConnectionQuality;

    goto :goto_0

    .line 55
    :pswitch_1
    sget-object v0, Lcom/addlive/service/ConnectionQuality;->AVERAGE:Lcom/addlive/service/ConnectionQuality;

    goto :goto_0

    .line 57
    :pswitch_2
    sget-object v0, Lcom/addlive/service/ConnectionQuality;->BAD:Lcom/addlive/service/ConnectionQuality;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/service/ConnectionQuality;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/addlive/service/ConnectionQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/service/ConnectionQuality;

    return-object v0
.end method

.method public static values()[Lcom/addlive/service/ConnectionQuality;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/addlive/service/ConnectionQuality;->$VALUES:[Lcom/addlive/service/ConnectionQuality;

    invoke-virtual {v0}, [Lcom/addlive/service/ConnectionQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/service/ConnectionQuality;

    return-object v0
.end method
