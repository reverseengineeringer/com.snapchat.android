.class public abstract Lda;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda$a;
    }
.end annotation


# static fields
.field static final a:Lda;

.field static final b:Lda;

.field static final c:Lda;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lda$1;

    invoke-direct {v0}, Lda$1;-><init>()V

    sput-object v0, Lda;->a:Lda;

    .line 108
    new-instance v0, Lda$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lda$a;-><init>(I)V

    sput-object v0, Lda;->b:Lda;

    .line 110
    new-instance v0, Lda$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lda$a;-><init>(I)V

    sput-object v0, Lda;->c:Lda;

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
    invoke-direct {p0}, Lda;-><init>()V

    return-void
.end method

.method public static a()Lda;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lda;->a:Lda;

    return-object v0
.end method


# virtual methods
.method public abstract a(II)Lda;
.end method

.method public abstract a(JJ)Lda;
.end method

.method public abstract a(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lda;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<*>;",
            "Ljava/lang/Comparable",
            "<*>;)",
            "Lda;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lda;
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
            "Lda;"
        }
    .end annotation
.end method

.method public abstract a(ZZ)Lda;
.end method

.method public abstract b()I
.end method

.method public abstract b(ZZ)Lda;
.end method
