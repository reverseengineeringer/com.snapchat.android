.class public final enum Llc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llc;

.field public static final enum DISCOVER:Llc;

.field public static final enum DOUBLE_TAP:Llc;

.field public static final enum FEED:Llc;

.field public static final enum IN_CHAT:Llc;

.field public static final enum QUICK_SNAP:Llc;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Llc;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v2}, Llc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llc;->FEED:Llc;

    .line 10
    new-instance v0, Llc;

    const-string v1, "IN_CHAT"

    invoke-direct {v0, v1, v3}, Llc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llc;->IN_CHAT:Llc;

    .line 11
    new-instance v0, Llc;

    const-string v1, "QUICK_SNAP"

    invoke-direct {v0, v1, v4}, Llc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llc;->QUICK_SNAP:Llc;

    .line 12
    new-instance v0, Llc;

    const-string v1, "DOUBLE_TAP"

    invoke-direct {v0, v1, v5}, Llc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llc;->DOUBLE_TAP:Llc;

    .line 13
    new-instance v0, Llc;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v6}, Llc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llc;->DISCOVER:Llc;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Llc;

    sget-object v1, Llc;->FEED:Llc;

    aput-object v1, v0, v2

    sget-object v1, Llc;->IN_CHAT:Llc;

    aput-object v1, v0, v3

    sget-object v1, Llc;->QUICK_SNAP:Llc;

    aput-object v1, v0, v4

    sget-object v1, Llc;->DOUBLE_TAP:Llc;

    aput-object v1, v0, v5

    sget-object v1, Llc;->DISCOVER:Llc;

    aput-object v1, v0, v6

    sput-object v0, Llc;->$VALUES:[Llc;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Llc;
    .locals 1

    .prologue
    .line 8
    const-class v0, Llc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llc;

    return-object v0
.end method

.method public static values()[Llc;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Llc;->$VALUES:[Llc;

    invoke-virtual {v0}, [Llc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llc;

    return-object v0
.end method
