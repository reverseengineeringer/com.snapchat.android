.class public final Lclg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclg$a;,
        Lclg$f;,
        Lclg$d;,
        Lclg$c;,
        Lclg$b;,
        Lclg$g;,
        Lclg$e;
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

.field private f:Lclg$e;

.field private g:Z

.field private h:Z

.field private i:[Lclg$c;


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

    iput v0, p0, Lclg;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lclg;->c:I

    iput v2, p0, Lclg;->d:I

    iput-boolean v1, p0, Lclg;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lclg;->f:Lclg$e;

    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lclg;->a:Ljava/util/List;

    :goto_0
    iput-boolean v1, p0, Lclg;->g:Z

    iput-boolean v1, p0, Lclg;->h:Z

    new-array v0, v2, [Lclg$c;

    iput-object v0, p0, Lclg;->i:[Lclg$c;

    .line 103
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;ZZ)Lclf;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;ZZ)",
            "Lclf;"
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

    instance-of v0, v0, Lclg$f;

    if-eqz v0, :cond_1

    .line 800
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclg$f;

    .line 801
    iget-object v2, v0, Lclg$f;->b:Lclh;

    if-nez v2, :cond_1

    iget-object v2, v0, Lclg$f;->a:Lcli;

    if-nez v2, :cond_1

    .line 802
    invoke-interface {p0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lclg;->a(Ljava/util/List;ZZ)Lclf;

    move-result-object v1

    .line 803
    iget-object v2, v1, Lclf;->a:Lcli;

    iget-object v1, v1, Lclf;->b:Lclh;

    iput-object v2, v0, Lclg$f;->a:Lcli;

    iput-object v1, v0, Lclg$f;->b:Lclh;

    .line 804
    new-instance v1, Lclf;

    invoke-direct {v1, v0, v0}, Lclf;-><init>(Lcli;Lclh;)V

    move-object v0, v1

    .line 813
    :goto_0
    return-object v0

    .line 807
    :cond_1
    invoke-static {p0}, Lclg;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    .line 808
    if-eqz p1, :cond_2

    .line 809
    new-instance v1, Lclf;

    aget-object v0, v3, v5

    check-cast v0, Lclh;

    invoke-direct {v1, v6, v0}, Lclf;-><init>(Lcli;Lclh;)V

    move-object v0, v1

    goto :goto_0

    .line 810
    :cond_2
    if-eqz p2, :cond_3

    .line 811
    new-instance v1, Lclf;

    aget-object v0, v3, v4

    check-cast v0, Lcli;

    invoke-direct {v1, v0, v6}, Lclf;-><init>(Lcli;Lclh;)V

    move-object v0, v1

    goto :goto_0

    .line 813
    :cond_3
    new-instance v2, Lclf;

    aget-object v0, v3, v4

    check-cast v0, Lcli;

    aget-object v1, v3, v5

    check-cast v1, Lclh;

    invoke-direct {v2, v0, v1}, Lclf;-><init>(Lcli;Lclh;)V

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
    new-instance v1, Lclg$a;

    invoke-direct {v1, p0}, Lclg$a;-><init>(Ljava/util/List;)V

    .line 825
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    .line 820
    :pswitch_0
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v1, Lclg$d;->a:Lclg$d;

    aput-object v1, v0, v2

    sget-object v1, Lclg$d;->a:Lclg$d;

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
.method public final a()Lclf;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    iget-boolean v1, p0, Lclg;->g:Z

    iget-boolean v2, p0, Lclg;->h:Z

    invoke-static {v0, v1, v2}, Lclg;->a(Ljava/util/List;ZZ)Lclf;

    move-result-object v1

    .line 124
    iget-object v0, p0, Lclg;->i:[Lclg$c;

    invoke-virtual {v0}, [Lclg$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lclg$c;

    check-cast v0, [Lclg$c;

    iput-object v0, p0, Lclg;->i:[Lclg$c;

    .line 125
    return-object v1
.end method

.method public final a(Lcli;Lclh;)Lclg;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 788
    iget-boolean v0, p0, Lclg;->g:Z

    or-int/lit8 v0, v0, 0x0

    iput-boolean v0, p0, Lclg;->g:Z

    .line 789
    iget-boolean v0, p0, Lclg;->h:Z

    or-int/lit8 v0, v0, 0x0

    iput-boolean v0, p0, Lclg;->h:Z

    .line 790
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lclg;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 552
    new-instance v2, Lclg$g;

    invoke-direct {v2, p1}, Lclg$g;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lclg;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    iget-object v1, p0, Lclg;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    iget-object v3, p0, Lclg;->a:Ljava/util/List;

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

    instance-of v1, v0, Lclg$c;

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
    invoke-virtual {p0}, Lclg;->b()V

    new-instance v1, Lclg$c;

    check-cast v0, Lclg$c;

    invoke-direct {v1, v0, v2}, Lclg$c;-><init>(Lclg$c;Lclg$e;)V

    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    iget-object v2, p0, Lclg;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lclg;->a:Ljava/util/List;

    iget-object v2, p0, Lclg;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lclg;->i:[Lclg$c;

    iget v2, v1, Lclg$c;->a:I

    aput-object v1, v0, v2

    return-object p0
.end method

.method public final a(I)V
    .locals 8

    .prologue
    .line 530
    iget v1, p0, Lclg;->b:I

    new-instance v0, Lclg$c;

    iget v2, p0, Lclg;->c:I

    iget v3, p0, Lclg;->d:I

    iget-boolean v4, p0, Lclg;->e:Z

    iget-object v6, p0, Lclg;->i:[Lclg$c;

    iget-object v7, p0, Lclg;->f:Lclg$e;

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lclg$c;-><init>(IIIZI[Lclg$c;Lclg$e;)V

    invoke-virtual {p0, v0, v0}, Lclg;->a(Lcli;Lclh;)Lclg;

    iget-object v1, p0, Lclg;->i:[Lclg$c;

    aput-object v0, v1, p1

    const/4 v0, 0x0

    iput-object v0, p0, Lclg;->f:Lclg$e;

    .line 531
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lclg;->f:Lclg$e;

    if-eqz v0, :cond_0

    .line 780
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prefix not followed by field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lclg;->f:Lclg$e;

    .line 783
    return-void
.end method
