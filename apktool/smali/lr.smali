.class public final enum Llr;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llr;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llr;

.field public static final enum BRAND:Llr;

.field public static final enum MY:Llr;

.field public static final enum OUR:Llr;

.field public static final enum USER:Llr;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Llr;

    const-string v1, "MY"

    invoke-direct {v0, v1, v2}, Llr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr;->MY:Llr;

    .line 6
    new-instance v0, Llr;

    const-string v1, "OUR"

    invoke-direct {v0, v1, v3}, Llr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr;->OUR:Llr;

    .line 7
    new-instance v0, Llr;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4}, Llr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr;->USER:Llr;

    .line 8
    new-instance v0, Llr;

    const-string v1, "BRAND"

    invoke-direct {v0, v1, v5}, Llr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llr;->BRAND:Llr;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Llr;

    sget-object v1, Llr;->MY:Llr;

    aput-object v1, v0, v2

    sget-object v1, Llr;->OUR:Llr;

    aput-object v1, v0, v3

    sget-object v1, Llr;->USER:Llr;

    aput-object v1, v0, v4

    sget-object v1, Llr;->BRAND:Llr;

    aput-object v1, v0, v5

    sput-object v0, Llr;->$VALUES:[Llr;

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

.method public static valueOf(Ljava/lang/String;)Llr;
    .locals 1

    .prologue
    .line 4
    const-class v0, Llr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llr;

    return-object v0
.end method

.method public static values()[Llr;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Llr;->$VALUES:[Llr;

    invoke-virtual {v0}, [Llr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llr;

    return-object v0
.end method
