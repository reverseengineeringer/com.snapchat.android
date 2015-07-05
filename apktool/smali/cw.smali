.class public abstract Lcw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcw$a;
    }
.end annotation


# static fields
.field static final a:Lcw;

.field static final b:Lcw;

.field static final c:Lcw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcw$1;

    invoke-direct {v0}, Lcw$1;-><init>()V

    sput-object v0, Lcw;->a:Lcw;

    .line 108
    new-instance v0, Lcw$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcw$a;-><init>(I)V

    sput-object v0, Lcw;->b:Lcw;

    .line 110
    new-instance v0, Lcw$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcw$a;-><init>(I)V

    sput-object v0, Lcw;->c:Lcw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcw;-><init>()V

    return-void
.end method

.method public static a()Lcw;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcw;->a:Lcw;

    return-object v0
.end method


# virtual methods
.method public abstract a(II)Lcw;
.end method

.method public abstract a(JJ)Lcw;
.end method

.method public abstract a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;",
            "Ljava/lang/Comparable",
            "<*>;)",
            "Lcw;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcw;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lcw;"
        }
    .end annotation
.end method

.method public abstract a(ZZ)Lcw;
.end method

.method public abstract b()I
.end method

.method public abstract b(ZZ)Lcw;
.end method
