.class public final Lckf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lckf$a;,
        Lckf$f;,
        Lckf$d;,
        Lckf$c;,
        Lckf$b;,
        Lckf$g;,
        Lckf$e;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lckf$e;

.field private g:Z

.field private h:Z

.field private i:[Lckf$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lckf;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lckf;->c:I

    iput v2, p0, Lckf;->d:I

    iput-boolean v1, p0, Lckf;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lckf;->f:Lckf$e;

    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lckf;->a:Ljava/util/List;

    :goto_0
    iput-boolean v1, p0, Lckf;->g:Z

    iput-boolean v1, p0, Lckf;->h:Z

    new-array v0, v2, [Lckf$c;

    iput-object v0, p0, Lckf;->i:[Lckf$c;

    .line 103
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;ZZ)Lcke;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Lcke;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 795
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder has created neither a printer nor a parser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 799
    if-lt v1, v3, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lckf$f;

    if-eqz v0, :cond_1

    .line 800
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckf$f;

    .line 801
    iget-object v2, v0, Lckf$f;->b:Lckg;

    if-nez v2, :cond_1

    iget-object v2, v0, Lckf$f;->a:Lckh;

    if-nez v2, :cond_1

    .line 802
    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lckf;->a(Ljava/util/List;ZZ)Lcke;

    move-result-object v1

    .line 803
    iget-object v2, v1, Lcke;->a:Lckh;

    iget-object v1, v1, Lcke;->b:Lckg;

    iput-object v2, v0, Lckf$f;->a:Lckh;

    iput-object v1, v0, Lckf$f;->b:Lckg;

    .line 804
    new-instance v1, Lcke;

    invoke-direct {v1, v0, v0}, Lcke;-><init>(Lckh;Lckg;)V

    move-object v0, v1

    .line 813
    :goto_0
    return-object v0

    .line 807
    :cond_1
    invoke-static {p0}, Lckf;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    .line 808
    if-eqz p1, :cond_2

    .line 809
    new-instance v1, Lcke;

    aget-object v0, v3, v5

    check-cast v0, Lckg;

    invoke-direct {v1, v6, v0}, Lcke;-><init>(Lckh;Lckg;)V

    move-object v0, v1

    goto :goto_0

    .line 810
    :cond_2
    if-eqz p2, :cond_3

    .line 811
    new-instance v1, Lcke;

    aget-object v0, v3, v4

    check-cast v0, Lckh;

    invoke-direct {v1, v0, v6}, Lcke;-><init>(Lckh;Lckg;)V

    move-object v0, v1

    goto :goto_0

    .line 813
    :cond_3
    new-instance v2, Lcke;

    aget-object v0, v3, v4

    check-cast v0, Lckh;

    aget-object v1, v3, v5

    check-cast v1, Lckg;

    invoke-direct {v2, v0, v1}, Lcke;-><init>(Lckh;Lckg;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 818
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 824
    new-instance v1, Lckf$a;

    invoke-direct {v1, p0}, Lckf$a;-><init>(Ljava/util/List;)V

    .line 825
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    .line 820
    :pswitch_0
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Lckf$d;->a:Lckf$d;

    aput-object v1, v0, v2

    sget-object v1, Lckf$d;->a:Lckf$d;

    aput-object v1, v0, v3

    goto :goto_0

    .line 822
    :pswitch_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcke;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    iget-boolean v1, p0, Lckf;->g:Z

    iget-boolean v2, p0, Lckf;->h:Z

    invoke-static {v0, v1, v2}, Lckf;->a(Ljava/util/List;ZZ)Lcke;

    move-result-object v1

    .line 124
    iget-object v0, p0, Lckf;->i:[Lckf$c;

    invoke-virtual {v0}, [Lckf$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lckf$c;

    check-cast v0, [Lckf$c;

    iput-object v0, p0, Lckf;->i:[Lckf$c;

    .line 125
    return-object v1
.end method

.method public final a(Lckh;Lckg;)Lckf;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    iget-boolean v0, p0, Lckf;->g:Z

    or-int/lit8 v0, v0, 0x0

    iput-boolean v0, p0, Lckf;->g:Z

    .line 789
    iget-boolean v0, p0, Lckf;->h:Z

    or-int/lit8 v0, v0, 0x0

    iput-boolean v0, p0, Lckf;->h:Z

    .line 790
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lckf;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 552
    new-instance v2, Lckf$g;

    invoke-direct {v2, p1}, Lckf$g;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lckf;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    iget-object v1, p0, Lckf;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    iget-object v3, p0, Lckf;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    instance-of v1, v0, Lckf$c;

    if-nez v1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No field to apply suffix to"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lckf;->b()V

    new-instance v1, Lckf$c;

    check-cast v0, Lckf$c;

    invoke-direct {v1, v0, v2}, Lckf$c;-><init>(Lckf$c;Lckf$e;)V

    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    iget-object v2, p0, Lckf;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lckf;->a:Ljava/util/List;

    iget-object v2, p0, Lckf;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lckf;->i:[Lckf$c;

    iget v2, v1, Lckf$c;->a:I

    aput-object v1, v0, v2

    return-object p0
.end method

.method public final a(I)V
    .locals 8

    .prologue
    .line 530
    iget v1, p0, Lckf;->b:I

    new-instance v0, Lckf$c;

    iget v2, p0, Lckf;->c:I

    iget v3, p0, Lckf;->d:I

    iget-boolean v4, p0, Lckf;->e:Z

    iget-object v6, p0, Lckf;->i:[Lckf$c;

    iget-object v7, p0, Lckf;->f:Lckf$e;

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lckf$c;-><init>(IIIZI[Lckf$c;Lckf$e;)V

    invoke-virtual {p0, v0, v0}, Lckf;->a(Lckh;Lckg;)Lckf;

    iget-object v1, p0, Lckf;->i:[Lckf$c;

    aput-object v0, v1, p1

    const/4 v0, 0x0

    iput-object v0, p0, Lckf;->f:Lckf$e;

    .line 531
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lckf;->f:Lckf$e;

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prefix not followed by field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lckf;->f:Lckf$e;

    .line 783
    return-void
.end method
