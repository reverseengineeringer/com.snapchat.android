.class public final enum Laxp$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laxp$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laxp$a;

.field public static final enum AWAITING_CONNECTION:Laxp$a;

.field public static final enum CONNECTED:Laxp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Laxp$a;

    const-string v1, "AWAITING_CONNECTION"

    invoke-direct {v0, v1, v2}, Laxp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laxp$a;->AWAITING_CONNECTION:Laxp$a;

    .line 31
    new-instance v0, Laxp$a;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Laxp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laxp$a;->CONNECTED:Laxp$a;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Laxp$a;

    sget-object v1, Laxp$a;->AWAITING_CONNECTION:Laxp$a;

    aput-object v1, v0, v2

    sget-object v1, Laxp$a;->CONNECTED:Laxp$a;

    aput-object v1, v0, v3

    sput-object v0, Laxp$a;->$VALUES:[Laxp$a;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laxp$a;
    .locals 1

    .prologue
    .line 29
    const-class v0, Laxp$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laxp$a;

    return-object v0
.end method

.method public static values()[Laxp$a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Laxp$a;->$VALUES:[Laxp$a;

    invoke-virtual {v0}, [Laxp$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laxp$a;

    return-object v0
.end method
