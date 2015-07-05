.class public final enum Lhz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhz;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhz;

.field public static final enum LOGGED_OUT:Lhz;

.field public static final enum NORMAL:Lhz;

.field public static final enum NOTIFY:Lhz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lhz;

    const-string v1, "LOGGED_OUT"

    invoke-direct {v0, v1, v2}, Lhz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhz;->LOGGED_OUT:Lhz;

    .line 6
    new-instance v0, Lhz;

    const-string v1, "NOTIFY"

    invoke-direct {v0, v1, v3}, Lhz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhz;->NOTIFY:Lhz;

    .line 7
    new-instance v0, Lhz;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lhz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhz;->NORMAL:Lhz;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lhz;

    sget-object v1, Lhz;->LOGGED_OUT:Lhz;

    aput-object v1, v0, v2

    sget-object v1, Lhz;->NOTIFY:Lhz;

    aput-object v1, v0, v3

    sget-object v1, Lhz;->NORMAL:Lhz;

    aput-object v1, v0, v4

    sput-object v0, Lhz;->$VALUES:[Lhz;

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

.method public static valueOf(Ljava/lang/String;)Lhz;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lhz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhz;

    return-object v0
.end method

.method public static values()[Lhz;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lhz;->$VALUES:[Lhz;

    invoke-virtual {v0}, [Lhz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhz;

    return-object v0
.end method
