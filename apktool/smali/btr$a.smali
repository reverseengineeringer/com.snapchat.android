.class public final enum Lbtr$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lbtr$a;

.field public static final enum b:Lbtr$a;

.field private static final synthetic e:[Lbtr$a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lbtr$a;

    const-string v1, "HTTP"

    const-string v2, "http"

    const/16 v3, 0x50

    invoke-direct {v0, v1, v4, v2, v3}, Lbtr$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lbtr$a;->a:Lbtr$a;

    .line 11
    new-instance v0, Lbtr$a;

    const-string v1, "HTTPS"

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v5, v2, v3}, Lbtr$a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lbtr$a;->b:Lbtr$a;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lbtr$a;

    sget-object v1, Lbtr$a;->a:Lbtr$a;

    aput-object v1, v0, v4

    sget-object v1, Lbtr$a;->b:Lbtr$a;

    aput-object v1, v0, v5

    sput-object v0, Lbtr$a;->e:[Lbtr$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lbtr$a;->c:Ljava/lang/String;

    .line 18
    iput p4, p0, Lbtr$a;->d:I

    .line 19
    return-void
.end method

.method static synthetic a(Lbtr$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lbtr$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lbtr$a;)I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lbtr$a;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbtr$a;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lbtr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbtr$a;

    return-object v0
.end method

.method public static values()[Lbtr$a;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lbtr$a;->e:[Lbtr$a;

    invoke-virtual {v0}, [Lbtr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbtr$a;

    return-object v0
.end method
