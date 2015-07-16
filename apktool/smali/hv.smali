.class public final enum Lhv;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhv;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhv;

.field public static final enum SPEED:Lhv;

.field public static final enum TIMESTAMP:Lhv;

.field public static final enum WEATHER:Lhv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lhv;

    const-string v1, "TIMESTAMP"

    invoke-direct {v0, v1, v2}, Lhv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhv;->TIMESTAMP:Lhv;

    .line 6
    new-instance v0, Lhv;

    const-string v1, "WEATHER"

    invoke-direct {v0, v1, v3}, Lhv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhv;->WEATHER:Lhv;

    .line 7
    new-instance v0, Lhv;

    const-string v1, "SPEED"

    invoke-direct {v0, v1, v4}, Lhv;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhv;->SPEED:Lhv;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lhv;

    sget-object v1, Lhv;->TIMESTAMP:Lhv;

    aput-object v1, v0, v2

    sget-object v1, Lhv;->WEATHER:Lhv;

    aput-object v1, v0, v3

    sget-object v1, Lhv;->SPEED:Lhv;

    aput-object v1, v0, v4

    sput-object v0, Lhv;->$VALUES:[Lhv;

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

.method public static valueOf(Ljava/lang/String;)Lhv;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lhv;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhv;

    return-object v0
.end method

.method public static values()[Lhv;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lhv;->$VALUES:[Lhv;

    invoke-virtual {v0}, [Lhv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhv;

    return-object v0
.end method
