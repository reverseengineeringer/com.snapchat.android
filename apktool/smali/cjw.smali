.class public final Lcjw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcka;

.field final b:Lcjy;

.field public final c:Ljava/util/Locale;

.field public final d:Z

.field public final e:Lcgk;

.field public final f:Ljava/lang/Integer;

.field public final g:I

.field private final h:Lcgf;


# direct methods
.method public constructor <init>(Lcka;Lcjy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcjw;->a:Lcka;

    .line 111
    iput-object p2, p0, Lcjw;->b:Lcjy;

    .line 112
    iput-object v1, p0, Lcjw;->c:Ljava/util/Locale;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcjw;->d:Z

    .line 114
    iput-object v1, p0, Lcjw;->h:Lcgf;

    .line 115
    iput-object v1, p0, Lcjw;->e:Lcgk;

    .line 116
    iput-object v1, p0, Lcjw;->f:Ljava/lang/Integer;

    .line 117
    const/16 v0, 0x7d0

    iput v0, p0, Lcjw;->g:I

    .line 118
    return-void
.end method

.method private constructor <init>(Lcka;Lcjy;Ljava/util/Locale;ZLcgf;Lcgk;Ljava/lang/Integer;I)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcjw;->a:Lcka;

    .line 130
    iput-object p2, p0, Lcjw;->b:Lcjy;

    .line 131
    iput-object p3, p0, Lcjw;->c:Ljava/util/Locale;

    .line 132
    iput-boolean p4, p0, Lcjw;->d:Z

    .line 133
    iput-object p5, p0, Lcjw;->h:Lcgf;

    .line 134
    iput-object p6, p0, Lcjw;->e:Lcgk;

    .line 135
    iput-object p7, p0, Lcjw;->f:Ljava/lang/Integer;

    .line 136
    iput p8, p0, Lcjw;->g:I

    .line 137
    return-void
.end method

.method private c()Lcka;
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcjw;->a:Lcka;

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
    invoke-virtual {p0}, Lcjw;->b()Lcjy;

    move-result-object v0

    .line 744
    iget-object v1, p0, Lcjw;->h:Lcgf;

    invoke-virtual {p0, v1}, Lcjw;->b(Lcgf;)Lcgf;

    move-result-object v1

    .line 745
    new-instance v2, Lcjz;

    iget-object v3, p0, Lcjw;->c:Ljava/util/Locale;

    iget-object v4, p0, Lcjw;->f:Ljava/lang/Integer;

    iget v5, p0, Lcjw;->g:I

    invoke-direct {v2, v1, v3, v4, v5}, Lcjz;-><init>(Lcgf;Ljava/util/Locale;Ljava/lang/Integer;I)V

    .line 746
    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Lcjy;->a(Lcjz;Ljava/lang/String;I)I

    move-result v0

    .line 747
    if-ltz v0, :cond_0

    .line 748
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 749
    invoke-virtual {v2, p1}, Lcjz;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 752
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 754
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lckb;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a()Lcjw;
    .locals 9

    .prologue
    .line 301
    sget-object v6, Lcgk;->a:Lcgk;

    iget-object v0, p0, Lcjw;->e:Lcgk;

    if-ne v0, v6, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcjw;

    iget-object v1, p0, Lcjw;->a:Lcka;

    iget-object v2, p0, Lcjw;->b:Lcjy;

    iget-object v3, p0, Lcjw;->c:Ljava/util/Locale;

    const/4 v4, 0x0

    iget-object v5, p0, Lcjw;->h:Lcgf;

    iget-object v7, p0, Lcjw;->f:Ljava/lang/Integer;

    iget v8, p0, Lcjw;->g:I

    invoke-direct/range {v0 .. v8}, Lcjw;-><init>(Lcka;Lcjy;Ljava/util/Locale;ZLcgf;Lcgk;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a(Lcgf;)Lcjw;
    .locals 9

    .prologue
    .line 257
    iget-object v0, p0, Lcjw;->h:Lcgf;

    if-ne v0, p1, :cond_0

    .line 260
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcjw;

    iget-object v1, p0, Lcjw;->a:Lcka;

    iget-object v2, p0, Lcjw;->b:Lcjy;

    iget-object v3, p0, Lcjw;->c:Ljava/util/Locale;

    iget-boolean v4, p0, Lcjw;->d:Z

    iget-object v6, p0, Lcjw;->e:Lcgk;

    iget-object v7, p0, Lcjw;->f:Ljava/lang/Integer;

    iget v8, p0, Lcjw;->g:I

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcjw;-><init>(Lcka;Lcjy;Ljava/util/Locale;ZLcgf;Lcgk;Ljava/lang/Integer;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a(Lcgz;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcjw;->c()Lcka;

    move-result-object v1

    invoke-interface {v1}, Lcka;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 584
    invoke-static {p1}, Lcgj;->a(Lcgz;)J

    move-result-wide v2

    invoke-static {p1}, Lcgj;->b(Lcgz;)Lcgf;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lcjw;->a(Ljava/lang/StringBuffer;JLcgf;)V

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lchb;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lcjw;->c()Lcka;

    move-result-object v1

    invoke-interface {v1}, Lcka;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 614
    invoke-direct {p0}, Lcjw;->c()Lcka;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lcjw;->c:Ljava/util/Locale;

    invoke-interface {v1, v0, p1, v2}, Lcka;->a(Ljava/lang/StringBuffer;Lchb;Ljava/util/Locale;)V

    .line 615
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuffer;JLcgf;)V
    .locals 14

    .prologue
    .line 619
    invoke-direct {p0}, Lcjw;->c()Lcka;

    move-result-object v2

    .line 620
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcjw;->b(Lcgf;)Lcgf;

    move-result-object v3

    .line 623
    invoke-virtual {v3}, Lcgf;->a()Lcgk;

    move-result-object v8

    .line 624
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Lcgk;->b(J)I

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
    sget-object v8, Lcgk;->a:Lcgk;

    .line 629
    const/4 v7, 0x0

    move-wide/from16 v4, p2

    .line 632
    :cond_0
    invoke-virtual {v3}, Lcgf;->b()Lcgf;

    move-result-object v6

    iget-object v9, p0, Lcjw;->c:Ljava/util/Locale;

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lcka;->a(Ljava/lang/StringBuffer;JLcgf;ILcgk;Ljava/util/Locale;)V

    .line 633
    return-void
.end method

.method public final b(Lcgf;)Lcgf;
    .locals 2

    .prologue
    .line 942
    invoke-static {p1}, Lcgj;->a(Lcgf;)Lcgf;

    move-result-object v0

    .line 943
    iget-object v1, p0, Lcjw;->h:Lcgf;

    if-eqz v1, :cond_0

    .line 944
    iget-object v0, p0, Lcjw;->h:Lcgf;

    .line 946
    :cond_0
    iget-object v1, p0, Lcjw;->e:Lcgk;

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcjw;->e:Lcgk;

    invoke-virtual {v0, v1}, Lcgf;->a(Lcgk;)Lcgf;

    move-result-object v0

    .line 949
    :cond_1
    return-object v0
.end method

.method public final b()Lcjy;
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcjw;->b:Lcjy;

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
