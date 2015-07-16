.class abstract enum Lcq$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcq$b;",
        ">;",
        "Lcp",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcq$b;

.field public static final enum b:Lcq$b;

.field public static final enum c:Lcq$b;

.field public static final enum d:Lcq$b;

.field private static final synthetic e:[Lcq$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 277
    new-instance v0, Lcq$b$1;

    const-string v1, "ALWAYS_TRUE"

    invoke-direct {v0, v1}, Lcq$b$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcq$b;->a:Lcq$b;

    .line 286
    new-instance v0, Lcq$b$2;

    const-string v1, "ALWAYS_FALSE"

    invoke-direct {v0, v1}, Lcq$b$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcq$b;->b:Lcq$b;

    .line 295
    new-instance v0, Lcq$b$3;

    const-string v1, "IS_NULL"

    invoke-direct {v0, v1}, Lcq$b$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcq$b;->c:Lcq$b;

    .line 304
    new-instance v0, Lcq$b$4;

    const-string v1, "NOT_NULL"

    invoke-direct {v0, v1}, Lcq$b$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcq$b;->d:Lcq$b;

    .line 275
    const/4 v0, 0x4

    new-array v0, v0, [Lcq$b;

    const/4 v1, 0x0

    sget-object v2, Lcq$b;->a:Lcq$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcq$b;->b:Lcq$b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcq$b;->c:Lcq$b;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcq$b;->d:Lcq$b;

    aput-object v2, v0, v1

    sput-object v0, Lcq$b;->e:[Lcq$b;

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
    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0, p1, p2}, Lcq$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcq$b;
    .locals 1

    .prologue
    .line 275
    const-class v0, Lcq$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcq$b;

    return-object v0
.end method

.method public static values()[Lcq$b;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcq$b;->e:[Lcq$b;

    invoke-virtual {v0}, [Lcq$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcq$b;

    return-object v0
.end method
