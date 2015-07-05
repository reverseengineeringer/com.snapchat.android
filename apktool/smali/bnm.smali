.class public final enum Lbnm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbnm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbnm;

.field public static final enum b:Lbnm;

.field public static final enum c:Lbnm;

.field public static final enum d:Lbnm;

.field private static final synthetic e:[Lbnm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lbnm;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbnm;->a:Lbnm;

    .line 20
    new-instance v0, Lbnm;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbnm;->b:Lbnm;

    .line 21
    new-instance v0, Lbnm;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbnm;->c:Lbnm;

    .line 22
    new-instance v0, Lbnm;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lbnm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbnm;->d:Lbnm;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lbnm;

    sget-object v1, Lbnm;->a:Lbnm;

    aput-object v1, v0, v2

    sget-object v1, Lbnm;->b:Lbnm;

    aput-object v1, v0, v3

    sget-object v1, Lbnm;->c:Lbnm;

    aput-object v1, v0, v4

    sget-object v1, Lbnm;->d:Lbnm;

    aput-object v1, v0, v5

    sput-object v0, Lbnm;->e:[Lbnm;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbnm;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbnm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbnm;

    return-object v0
.end method

.method public static values()[Lbnm;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbnm;->e:[Lbnm;

    invoke-virtual {v0}, [Lbnm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbnm;

    return-object v0
.end method
