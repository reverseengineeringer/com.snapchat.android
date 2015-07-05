.class public abstract enum Lep$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lep$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lep$a;

.field public static final enum b:Lep$a;

.field public static final enum c:Lep$a;

.field public static final enum d:Lep$a;

.field private static final synthetic e:[Lep$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 446
    new-instance v0, Lep$a$1;

    const-string v1, "POSSIBLE"

    invoke-direct {v0, v1}, Lep$a$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lep$a;->a:Lep$a;

    .line 458
    new-instance v0, Lep$a$2;

    const-string v1, "VALID"

    invoke-direct {v0, v1}, Lep$a$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lep$a;->b:Lep$a;

    .line 480
    new-instance v0, Lep$a$3;

    const-string v1, "STRICT_GROUPING"

    invoke-direct {v0, v1}, Lep$a$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lep$a;->c:Lep$a;

    .line 512
    new-instance v0, Lep$a$4;

    const-string v1, "EXACT_GROUPING"

    invoke-direct {v0, v1}, Lep$a$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lep$a;->d:Lep$a;

    .line 441
    const/4 v0, 0x4

    new-array v0, v0, [Lep$a;

    const/4 v1, 0x0

    sget-object v2, Lep$a;->a:Lep$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lep$a;->b:Lep$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lep$a;->c:Lep$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lep$a;->d:Lep$a;

    aput-object v2, v0, v1

    sput-object v0, Lep$a;->e:[Lep$a;

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
    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Lep$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lep$a;
    .locals 1

    .prologue
    .line 441
    const-class v0, Lep$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lep$a;

    return-object v0
.end method

.method public static values()[Lep$a;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lep$a;->e:[Lep$a;

    invoke-virtual {v0}, [Lep$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lep$a;

    return-object v0
.end method


# virtual methods
.method abstract a(Ler$a;Ljava/lang/String;Lep;)Z
.end method
