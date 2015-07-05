.class public final enum Lgc;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgc;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgc;

.field public static final enum MOBILE:Lgc;

.field public static final enum WIFI:Lgc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lgc;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lgc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgc;->WIFI:Lgc;

    .line 6
    new-instance v0, Lgc;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v3}, Lgc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgc;->MOBILE:Lgc;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lgc;

    sget-object v1, Lgc;->WIFI:Lgc;

    aput-object v1, v0, v2

    sget-object v1, Lgc;->MOBILE:Lgc;

    aput-object v1, v0, v3

    sput-object v0, Lgc;->$VALUES:[Lgc;

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

.method public static valueOf(Ljava/lang/String;)Lgc;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lgc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgc;

    return-object v0
.end method

.method public static values()[Lgc;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lgc;->$VALUES:[Lgc;

    invoke-virtual {v0}, [Lgc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgc;

    return-object v0
.end method
