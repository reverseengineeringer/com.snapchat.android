.class public final Lckx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lclb;

.field final b:Lckz;

.field public final c:Ljava/util/Locale;

.field public final d:Z

.field public final e:Lchl;

.field public final f:Ljava/lang/Integer;

.field public final g:I

.field private final h:Lchg;


# direct methods
.method public constructor <init>(Lclb;Lckz;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lckx;->a:Lclb;

    .line 111
    iput-object p2, p0, Lckx;->b:Lckz;

    .line 112
    iput-object v1, p0, Lckx;->c:Ljava/util/Locale;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lckx;->d:Z

    .line 114
    iput-object v1, p0, Lckx;->h:Lchg;

    .line 115
    iput-object v1, p0, Lckx;->e:Lchl;

    .line 116
    iput-object v1, p0, Lckx;->f:Ljava/lang/Integer;

    .line 117
    const/16 v0, 0x7d0

    iput v0, p0, Lckx;->g:I

    .line 118
    return-void
.end method

.method private constructor <init>(Lclb;Lckz;Ljava/util/Locale;ZLchg;Lchl;Ljava/lang/Integer;I)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lckx;->a:Lclb;

    .line 130
    iput-object p2, p0, Lckx;->b:Lckz;

    .line 131
    iput-object p3, p0, Lckx;->c:Ljava/util/Locale;

    .line 132
    iput-boolean p4, p0, Lckx;->d:Z

    .line 133
    iput-object p5, p0, Lckx;->h:Lchg;

    .line 134
    iput-object p6, p0, Lckx;->e:Lchl;

    .line 135
    iput-object p7, p0, Lckx;->f:Ljava/lang/Integer;

    .line 136
    iput p8, p0, Lckx;->g:I

    .line 137
    return-void
.end method

.method private c()Lclb;
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lckx;->a:Lclb;

    .line 659
    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 742
    invoke-virtual {p0}, Lckx;->b()Lckz;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lckx;->h:Lchg;

    invoke-virtual {p0, v1}, Lckx;->b(Lchg;)Lchg;

    move-result-object v1

    .line 745
    new-instance v2, Lcla;

    iget-object v3, p0, Lckx;->c:Ljava/util/Locale;

    iget-object v4, p0, Lckx;->f:Ljava/lang/Integer;

    iget v5, p0, Lckx;->g:I

    invoke-direct {v2, v1, v3, v4, v5}, Lcla;-><init>(Lchg;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 746
    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Lckz;->a(Lcla;Ljava/lang/String;I)I

    move-result v0

    .line 747
    if-ltz v0, :cond_0

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 749
    invoke-virtual {v2, p1}, Lcla;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 752
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 754
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lclc;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a()Lckx;
    .locals 9

    .prologue
    .line 301
    sget-object v6, Lchl;->a:Lchl;

    iget-object v0, p0, Lckx;->e:Lchl;

    if-ne v0, v6, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lckx;

    iget-object v1, p0, Lckx;->a:Lclb;

    iget-object v2, p0, Lckx;->b:Lckz;

    iget-object v3, p0, Lckx;->c:Ljava/util/Locale;

    const/4 v4, 0x0

    iget-object v5, p0, Lckx;->h:Lchg;

    iget-object v7, p0, Lckx;->f:Ljava/lang/Integer;

    iget v8, p0, Lckx;->g:I

    invoke-direct/range {v0 .. v8}, Lckx;-><init>(Lclb;Lckz;Ljava/util/Locale;ZLchg;Lchl;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a(Lchg;)Lckx;
    .locals 9

    .prologue
    .line 257
    iget-object v0, p0, Lckx;->h:Lchg;

    if-ne v0, p1, :cond_0

    .line 260
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lckx;

    iget-object v1, p0, Lckx;->a:Lclb;

    iget-object v2, p0, Lckx;->b:Lckz;

    iget-object v3, p0, Lckx;->c:Ljava/util/Locale;

    iget-boolean v4, p0, Lckx;->d:Z

    iget-object v6, p0, Lckx;->e:Lchl;

    iget-object v7, p0, Lckx;->f:Ljava/lang/Integer;

    iget v8, p0, Lckx;->g:I

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lckx;-><init>(Lclb;Lckz;Ljava/util/Locale;ZLchg;Lchl;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a(Lcia;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lckx;->c()Lclb;

    move-result-object v1

    invoke-interface {v1}, Lclb;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 584
    invoke-static {p1}, Lchk;->a(Lcia;)J

    move-result-wide v2

    invoke-static {p1}, Lchk;->b(Lcia;)Lchg;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lckx;->a(Ljava/lang/StringBuffer;JLchg;)V

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcic;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lckx;->c()Lclb;

    move-result-object v1

    invoke-interface {v1}, Lclb;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 614
    invoke-direct {p0}, Lckx;->c()Lclb;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lckx;->c:Ljava/util/Locale;

    invoke-interface {v1, v0, p1, v2}, Lclb;->a(Ljava/lang/StringBuffer;Lcic;Ljava/util/Locale;)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuffer;JLchg;)V
    .locals 14

    .prologue
    .line 619
    invoke-direct {p0}, Lckx;->c()Lclb;

    move-result-object v2

    .line 620
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lckx;->b(Lchg;)Lchg;

    move-result-object v3

    .line 623
    invoke-virtual {v3}, Lchg;->a()Lchl;

    move-result-object v8

    .line 624
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Lchl;->b(J)I

    move-result v7

    .line 625
    int-to-long v4, v7

    add-long v4, v4, p2

    .line 626
    xor-long v10, p2, v4

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-gez v6, :cond_0

    int-to-long v10, v7

    xor-long v10, v10, p2

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-ltz v6, :cond_0

    .line 628
    sget-object v8, Lchl;->a:Lchl;

    .line 629
    const/4 v7, 0x0

    move-wide/from16 v4, p2

    .line 632
    :cond_0
    invoke-virtual {v3}, Lchg;->b()Lchg;

    move-result-object v6

    iget-object v9, p0, Lckx;->c:Ljava/util/Locale;

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lclb;->a(Ljava/lang/StringBuffer;JLchg;ILchl;Ljava/util/Locale;)V

    .line 633
    return-void
.end method

.method public final b(Lchg;)Lchg;
    .locals 2

    .prologue
    .line 942
    invoke-static {p1}, Lchk;->a(Lchg;)Lchg;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lckx;->h:Lchg;

    if-eqz v1, :cond_0

    .line 944
    iget-object v0, p0, Lckx;->h:Lchg;

    .line 946
    :cond_0
    iget-object v1, p0, Lckx;->e:Lchl;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lckx;->e:Lchl;

    invoke-virtual {v0, v1}, Lchg;->a(Lchl;)Lchg;

    move-result-object v0

    .line 949
    :cond_1
    return-object v0
.end method

.method public final b()Lckz;
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lckx;->b:Lckz;

    .line 928
    if-nez v0, :cond_0

    .line 929
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_0
    return-object v0
.end method
