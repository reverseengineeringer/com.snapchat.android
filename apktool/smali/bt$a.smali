.class public final enum Lbt$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbt$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbt$a;

.field public static final enum b:Lbt$a;

.field public static final enum c:Lbt$a;

.field public static final enum d:Lbt$a;

.field private static final synthetic f:[Lbt$a;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lbt$a;

    const-string v1, "INVALID_REQUEST"

    const-string v2, "Invalid Ad request."

    invoke-direct {v0, v1, v3, v2}, Lbt$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbt$a;->a:Lbt$a;

    new-instance v0, Lbt$a;

    const-string v1, "NO_FILL"

    const-string v2, "Ad request successful, but no ad returned due to lack of ad inventory."

    invoke-direct {v0, v1, v4, v2}, Lbt$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbt$a;->b:Lbt$a;

    new-instance v0, Lbt$a;

    const-string v1, "NETWORK_ERROR"

    const-string v2, "A network error occurred."

    invoke-direct {v0, v1, v5, v2}, Lbt$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbt$a;->c:Lbt$a;

    new-instance v0, Lbt$a;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "There was an internal error."

    invoke-direct {v0, v1, v6, v2}, Lbt$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbt$a;->d:Lbt$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lbt$a;

    sget-object v1, Lbt$a;->a:Lbt$a;

    aput-object v1, v0, v3

    sget-object v1, Lbt$a;->b:Lbt$a;

    aput-object v1, v0, v4

    sget-object v1, Lbt$a;->c:Lbt$a;

    aput-object v1, v0, v5

    sget-object v1, Lbt$a;->d:Lbt$a;

    aput-object v1, v0, v6

    sput-object v0, Lbt$a;->f:[Lbt$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbt$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbt$a;
    .locals 1

    const-class v0, Lbt$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbt$a;

    return-object v0
.end method

.method public static values()[Lbt$a;
    .locals 1

    sget-object v0, Lbt$a;->f:[Lbt$a;

    invoke-virtual {v0}, [Lbt$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbt$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbt$a;->e:Ljava/lang/String;

    return-object v0
.end method
