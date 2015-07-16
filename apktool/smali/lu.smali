.class public final enum Llu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llu;

.field public static final enum DISCOVER:Llu;

.field public static final enum DOUBLE_TAP:Llu;

.field public static final enum FEED:Llu;

.field public static final enum IN_CHAT:Llu;

.field public static final enum QUICK_SNAP:Llu;


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
    new-instance v0, Llu;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v2}, Llu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llu;->FEED:Llu;

    .line 10
    new-instance v0, Llu;

    const-string v1, "IN_CHAT"

    invoke-direct {v0, v1, v3}, Llu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llu;->IN_CHAT:Llu;

    .line 11
    new-instance v0, Llu;

    const-string v1, "QUICK_SNAP"

    invoke-direct {v0, v1, v4}, Llu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llu;->QUICK_SNAP:Llu;

    .line 12
    new-instance v0, Llu;

    const-string v1, "DOUBLE_TAP"

    invoke-direct {v0, v1, v5}, Llu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llu;->DOUBLE_TAP:Llu;

    .line 13
    new-instance v0, Llu;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v6}, Llu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llu;->DISCOVER:Llu;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Llu;

    sget-object v1, Llu;->FEED:Llu;

    aput-object v1, v0, v2

    sget-object v1, Llu;->IN_CHAT:Llu;

    aput-object v1, v0, v3

    sget-object v1, Llu;->QUICK_SNAP:Llu;

    aput-object v1, v0, v4

    sget-object v1, Llu;->DOUBLE_TAP:Llu;

    aput-object v1, v0, v5

    sget-object v1, Llu;->DISCOVER:Llu;

    aput-object v1, v0, v6

    sput-object v0, Llu;->$VALUES:[Llu;

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

.method public static valueOf(Ljava/lang/String;)Llu;
    .locals 1

    .prologue
    .line 8
    const-class v0, Llu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llu;

    return-object v0
.end method

.method public static values()[Llu;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Llu;->$VALUES:[Llu;

    invoke-virtual {v0}, [Llu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llu;

    return-object v0
.end method
