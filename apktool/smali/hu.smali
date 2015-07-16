.class public final enum Lhu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhu;

.field public static final enum AUTO_ADVANCE:Lhu;

.field public static final enum BACK_PRESSED:Lhu;

.field public static final enum ENTER_BACKGROUND:Lhu;

.field public static final enum ERROR:Lhu;

.field public static final enum LONG_PRESS_AND_TAP:Lhu;

.field public static final enum LONG_PRESS_END:Lhu;

.field public static final enum SWIPE_BEGINNING:Lhu;

.field public static final enum SWIPE_DOWN:Lhu;

.field public static final enum SWIPE_END:Lhu;

.field public static final enum TAP:Lhu;


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
    new-instance v0, Lhu;

    const-string v1, "SWIPE_DOWN"

    invoke-direct {v0, v1, v3}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->SWIPE_DOWN:Lhu;

    .line 6
    new-instance v0, Lhu;

    const-string v1, "SWIPE_BEGINNING"

    invoke-direct {v0, v1, v4}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->SWIPE_BEGINNING:Lhu;

    .line 7
    new-instance v0, Lhu;

    const-string v1, "SWIPE_END"

    invoke-direct {v0, v1, v5}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->SWIPE_END:Lhu;

    .line 8
    new-instance v0, Lhu;

    const-string v1, "ENTER_BACKGROUND"

    invoke-direct {v0, v1, v6}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->ENTER_BACKGROUND:Lhu;

    .line 9
    new-instance v0, Lhu;

    const-string v1, "AUTO_ADVANCE"

    invoke-direct {v0, v1, v7}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->AUTO_ADVANCE:Lhu;

    .line 10
    new-instance v0, Lhu;

    const-string v1, "BACK_PRESSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->BACK_PRESSED:Lhu;

    .line 11
    new-instance v0, Lhu;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->ERROR:Lhu;

    .line 12
    new-instance v0, Lhu;

    const-string v1, "LONG_PRESS_END"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->LONG_PRESS_END:Lhu;

    .line 13
    new-instance v0, Lhu;

    const-string v1, "LONG_PRESS_AND_TAP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->LONG_PRESS_AND_TAP:Lhu;

    .line 14
    new-instance v0, Lhu;

    const-string v1, "TAP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lhu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhu;->TAP:Lhu;

    .line 4
    const/16 v0, 0xa

    new-array v0, v0, [Lhu;

    sget-object v1, Lhu;->SWIPE_DOWN:Lhu;

    aput-object v1, v0, v3

    sget-object v1, Lhu;->SWIPE_BEGINNING:Lhu;

    aput-object v1, v0, v4

    sget-object v1, Lhu;->SWIPE_END:Lhu;

    aput-object v1, v0, v5

    sget-object v1, Lhu;->ENTER_BACKGROUND:Lhu;

    aput-object v1, v0, v6

    sget-object v1, Lhu;->AUTO_ADVANCE:Lhu;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lhu;->BACK_PRESSED:Lhu;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lhu;->ERROR:Lhu;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lhu;->LONG_PRESS_END:Lhu;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lhu;->LONG_PRESS_AND_TAP:Lhu;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lhu;->TAP:Lhu;

    aput-object v2, v0, v1

    sput-object v0, Lhu;->$VALUES:[Lhu;

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

.method public static valueOf(Ljava/lang/String;)Lhu;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lhu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhu;

    return-object v0
.end method

.method public static values()[Lhu;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lhu;->$VALUES:[Lhu;

    invoke-virtual {v0}, [Lhu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhu;

    return-object v0
.end method
