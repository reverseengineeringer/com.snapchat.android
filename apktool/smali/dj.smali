.class public final Ldj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation


# static fields
.field static final a:Ldx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldx",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ldj$1;

    invoke-direct {v0}, Ldj$1;-><init>()V

    sput-object v0, Ldj;->a:Ldx;

    .line 127
    new-instance v0, Ldj$4;

    invoke-direct {v0}, Ldj$4;-><init>()V

    sput-object v0, Ldj;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a(Ljava/util/Iterator;Lcl;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcl",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 775
    const-string v0, "predicate"

    invoke-static {p1, v0}, Lck;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 778
    invoke-interface {p1, v1}, Lcl;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 782
    :goto_1
    return v0

    .line 776
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a()Ldw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldw",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    sget-object v0, Ldj;->a:Ldx;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ldw;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ldw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1073
    new-instance v0, Ldj$3;

    invoke-direct {v0, p0}, Ldj$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ldw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ldw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1031
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Ldj;->a([Ljava/lang/Object;III)Ldx;

    move-result-object v0

    return-object v0
.end method

.method static a([Ljava/lang/Object;III)Ldx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Ldx",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1043
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 1044
    add-int v0, p1, p2

    .line 1047
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lck;->a(III)V

    .line 1048
    invoke-static {p3, p2}, Lck;->b(II)I

    .line 1049
    if-nez p2, :cond_1

    .line 1050
    sget-object v0, Ldj;->a:Ldx;

    .line 1058
    :goto_1
    return-object v0

    .line 1043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1058
    :cond_1
    new-instance v0, Ldj$2;

    invoke-direct {v0, p2, p3, p0, p1}, Ldj$2;-><init>(II[Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {p0}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const/4 v0, 0x0

    .line 361
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 364
    :cond_0
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1}, Lcm;->a(Ljava/lang/Object;)Lcl;

    move-result-object v0

    invoke-static {p0, v0}, Ldj;->a(Ljava/util/Iterator;Lcl;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 269
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    :cond_1
    :goto_0
    return v0

    .line 273
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 274
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 275
    invoke-static {v1, v2}, Lcj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 279
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method
