.class public final enum Lbon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbon;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbon;

.field public static final enum b:Lbon;

.field public static final enum c:Lbon;

.field public static final enum d:Lbon;

.field private static final synthetic e:[Lbon;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lbon;

    const-string v1, "SPDY_SYN_STREAM"

    invoke-direct {v0, v1, v2}, Lbon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbon;->a:Lbon;

    .line 20
    new-instance v0, Lbon;

    const-string v1, "SPDY_REPLY"

    invoke-direct {v0, v1, v3}, Lbon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbon;->b:Lbon;

    .line 21
    new-instance v0, Lbon;

    const-string v1, "SPDY_HEADERS"

    invoke-direct {v0, v1, v4}, Lbon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbon;->c:Lbon;

    .line 22
    new-instance v0, Lbon;

    const-string v1, "HTTP_20_HEADERS"

    invoke-direct {v0, v1, v5}, Lbon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbon;->d:Lbon;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lbon;

    sget-object v1, Lbon;->a:Lbon;

    aput-object v1, v0, v2

    sget-object v1, Lbon;->b:Lbon;

    aput-object v1, v0, v3

    sget-object v1, Lbon;->c:Lbon;

    aput-object v1, v0, v4

    sget-object v1, Lbon;->d:Lbon;

    aput-object v1, v0, v5

    sput-object v0, Lbon;->e:[Lbon;

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

.method public static valueOf(Ljava/lang/String;)Lbon;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbon;

    return-object v0
.end method

.method public static values()[Lbon;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbon;->e:[Lbon;

    invoke-virtual {v0}, [Lbon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbon;

    return-object v0
.end method
