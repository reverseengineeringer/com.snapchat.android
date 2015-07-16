.class public final enum Lkf;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lkf;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkf;

.field public static final enum BACK_BUTTON:Lkf;

.field public static final enum CHAT_BUTTON:Lkf;

.field public static final enum OTHER:Lkf;

.field public static final enum SNAP_BUTTON:Lkf;

.field public static final enum SWIPE_LEFT:Lkf;

.field public static final enum SWIPE_UP:Lkf;

.field public static final enum TOGGLE:Lkf;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lkf;

    const-string v1, "SWIPE_UP"

    invoke-direct {v0, v1, v3}, Lkf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkf;->SWIPE_UP:Lkf;

    .line 6
    new-instance v0, Lkf;

    const-string v1, "SWIPE_LEFT"

    invoke-direct {v0, v1, v4}, Lkf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkf;->SWIPE_LEFT:Lkf;

    .line 7
    new-instance v0, Lkf;

    const-string v1, "BACK_BUTTON"

    invoke-direct {v0, v1, v5}, Lkf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkf;->BACK_BUTTON:Lkf;

    .line 8
    new-instance v0, Lkf;

    const-string v1, "TOGGLE"

    invoke-direct {v0, v1, v6}, Lkf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkf;->TOGGLE:Lkf;

    .line 9
    new-instance v0, Lkf;

    const-string v1, "SNAP_BUTTON"

    invoke-direct {v0, v1, v7}, Lkf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkf;->SNAP_BUTTON:Lkf;

    .line 10
    new-instance v0, Lkf;

    const-string v1, "CHAT_BUTTON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lkf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkf;->CHAT_BUTTON:Lkf;

    .line 11
    new-instance v0, Lkf;

    const-string v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lkf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkf;->OTHER:Lkf;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lkf;

    sget-object v1, Lkf;->SWIPE_UP:Lkf;

    aput-object v1, v0, v3

    sget-object v1, Lkf;->SWIPE_LEFT:Lkf;

    aput-object v1, v0, v4

    sget-object v1, Lkf;->BACK_BUTTON:Lkf;

    aput-object v1, v0, v5

    sget-object v1, Lkf;->TOGGLE:Lkf;

    aput-object v1, v0, v6

    sget-object v1, Lkf;->SNAP_BUTTON:Lkf;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lkf;->CHAT_BUTTON:Lkf;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lkf;->OTHER:Lkf;

    aput-object v2, v0, v1

    sput-object v0, Lkf;->$VALUES:[Lkf;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkf;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lkf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lkf;

    return-object v0
.end method

.method public static values()[Lkf;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lkf;->$VALUES:[Lkf;

    invoke-virtual {v0}, [Lkf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkf;

    return-object v0
.end method
