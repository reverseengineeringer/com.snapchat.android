.class public final enum Lmj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmj;

.field public static final enum BRAND:Lmj;

.field public static final enum MY:Lmj;

.field public static final enum OUR:Lmj;

.field public static final enum USER:Lmj;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lmj;

    const-string v1, "MY"

    invoke-direct {v0, v1, v2}, Lmj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmj;->MY:Lmj;

    .line 6
    new-instance v0, Lmj;

    const-string v1, "OUR"

    invoke-direct {v0, v1, v3}, Lmj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmj;->OUR:Lmj;

    .line 7
    new-instance v0, Lmj;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4}, Lmj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmj;->USER:Lmj;

    .line 8
    new-instance v0, Lmj;

    const-string v1, "BRAND"

    invoke-direct {v0, v1, v5}, Lmj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmj;->BRAND:Lmj;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lmj;

    sget-object v1, Lmj;->MY:Lmj;

    aput-object v1, v0, v2

    sget-object v1, Lmj;->OUR:Lmj;

    aput-object v1, v0, v3

    sget-object v1, Lmj;->USER:Lmj;

    aput-object v1, v0, v4

    sget-object v1, Lmj;->BRAND:Lmj;

    aput-object v1, v0, v5

    sput-object v0, Lmj;->$VALUES:[Lmj;

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

.method public static valueOf(Ljava/lang/String;)Lmj;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lmj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmj;

    return-object v0
.end method

.method public static values()[Lmj;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lmj;->$VALUES:[Lmj;

    invoke-virtual {v0}, [Lmj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmj;

    return-object v0
.end method
