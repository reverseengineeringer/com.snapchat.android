.class public final enum Lhl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhl;

.field public static final enum AUTO_ADVANCE:Lhl;

.field public static final enum BACK_PRESSED:Lhl;

.field public static final enum ENTER_BACKGROUND:Lhl;

.field public static final enum ERROR:Lhl;

.field public static final enum LONG_PRESS_AND_TAP:Lhl;

.field public static final enum LONG_PRESS_END:Lhl;

.field public static final enum SWIPE_BEGINNING:Lhl;

.field public static final enum SWIPE_DOWN:Lhl;

.field public static final enum SWIPE_END:Lhl;

.field public static final enum TAP:Lhl;


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
    new-instance v0, Lhl;

    const-string v1, "SWIPE_DOWN"

    invoke-direct {v0, v1, v3}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->SWIPE_DOWN:Lhl;

    .line 6
    new-instance v0, Lhl;

    const-string v1, "SWIPE_BEGINNING"

    invoke-direct {v0, v1, v4}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->SWIPE_BEGINNING:Lhl;

    .line 7
    new-instance v0, Lhl;

    const-string v1, "SWIPE_END"

    invoke-direct {v0, v1, v5}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->SWIPE_END:Lhl;

    .line 8
    new-instance v0, Lhl;

    const-string v1, "ENTER_BACKGROUND"

    invoke-direct {v0, v1, v6}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->ENTER_BACKGROUND:Lhl;

    .line 9
    new-instance v0, Lhl;

    const-string v1, "AUTO_ADVANCE"

    invoke-direct {v0, v1, v7}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->AUTO_ADVANCE:Lhl;

    .line 10
    new-instance v0, Lhl;

    const-string v1, "BACK_PRESSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->BACK_PRESSED:Lhl;

    .line 11
    new-instance v0, Lhl;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->ERROR:Lhl;

    .line 12
    new-instance v0, Lhl;

    const-string v1, "LONG_PRESS_END"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->LONG_PRESS_END:Lhl;

    .line 13
    new-instance v0, Lhl;

    const-string v1, "LONG_PRESS_AND_TAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->LONG_PRESS_AND_TAP:Lhl;

    .line 14
    new-instance v0, Lhl;

    const-string v1, "TAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lhl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhl;->TAP:Lhl;

    .line 4
    const/16 v0, 0xa

    new-array v0, v0, [Lhl;

    sget-object v1, Lhl;->SWIPE_DOWN:Lhl;

    aput-object v1, v0, v3

    sget-object v1, Lhl;->SWIPE_BEGINNING:Lhl;

    aput-object v1, v0, v4

    sget-object v1, Lhl;->SWIPE_END:Lhl;

    aput-object v1, v0, v5

    sget-object v1, Lhl;->ENTER_BACKGROUND:Lhl;

    aput-object v1, v0, v6

    sget-object v1, Lhl;->AUTO_ADVANCE:Lhl;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lhl;->BACK_PRESSED:Lhl;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lhl;->ERROR:Lhl;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lhl;->LONG_PRESS_END:Lhl;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lhl;->LONG_PRESS_AND_TAP:Lhl;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lhl;->TAP:Lhl;

    aput-object v2, v0, v1

    sput-object v0, Lhl;->$VALUES:[Lhl;

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

.method public static valueOf(Ljava/lang/String;)Lhl;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lhl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhl;

    return-object v0
.end method

.method public static values()[Lhl;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lhl;->$VALUES:[Lhl;

    invoke-virtual {v0}, [Lhl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhl;

    return-object v0
.end method
