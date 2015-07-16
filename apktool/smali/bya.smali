.class public final Lbya;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:C

.field b:Z

.field private c:Ljava/util/List;

.field private d:Ljava/util/Map;

.field private e:Ljava/util/Map;

.field private f:Lcar;

.field private g:Lcar;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Stack;

.field private m:Ljava/util/Stack;

.field private n:Ljava/util/Stack;

.field private o:Ljava/util/Stack;

.field private p:Lbyg;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 238
    const/16 v1, 0x27

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lbya;-><init>(CZZZZ)V

    .line 239
    return-void
.end method

.method public constructor <init>(CZZZZ)V
    .locals 5

    .prologue
    const/16 v4, 0x27

    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbya;->c:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbya;->d:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbya;->e:Ljava/util/Map;

    .line 193
    iput-char v4, p0, Lbya;->a:C

    .line 196
    new-instance v0, Lcaq;

    invoke-direct {v0}, Lcaq;-><init>()V

    iput-object v0, p0, Lbya;->f:Lcar;

    .line 199
    new-instance v0, Lcag;

    invoke-direct {v0}, Lcag;-><init>()V

    iput-object v0, p0, Lbya;->g:Lcar;

    .line 215
    iput-object v1, p0, Lbya;->k:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lbya;->l:Ljava/util/Stack;

    .line 221
    iput-object v1, p0, Lbya;->m:Ljava/util/Stack;

    .line 224
    iput-object v1, p0, Lbya;->n:Ljava/util/Stack;

    .line 227
    iput-object v1, p0, Lbya;->o:Ljava/util/Stack;

    .line 230
    iput-object v1, p0, Lbya;->p:Lbyg;

    .line 268
    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    iget-object v1, p0, Lbya;->f:Lcar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    iget-object v1, p0, Lbya;->g:Lcar;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcac;

    invoke-direct {v1}, Lcac;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcas;

    invoke-direct {v1}, Lcas;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcao;

    invoke-direct {v1}, Lcao;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcah;

    invoke-direct {v1}, Lcah;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcai;

    invoke-direct {v1}, Lcai;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcap;

    invoke-direct {v1}, Lcap;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcam;

    invoke-direct {v1}, Lcam;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcal;

    invoke-direct {v1}, Lcal;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcak;

    invoke-direct {v1}, Lcak;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcaj;

    invoke-direct {v1}, Lcaj;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcad;

    invoke-direct {v1}, Lcad;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcaf;

    invoke-direct {v1}, Lcaf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcae;

    invoke-direct {v1}, Lcae;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    new-instance v1, Lcan;

    invoke-direct {v1}, Lcan;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iput-boolean p2, p0, Lbya;->h:Z

    .line 272
    iget-boolean v0, p0, Lbya;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "E"

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbya;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PI"

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbya;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    iput-boolean p3, p0, Lbya;->i:Z

    .line 276
    iput-boolean p4, p0, Lbya;->j:Z

    .line 277
    iget-boolean v0, p0, Lbya;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Lbyx;

    invoke-direct {v0}, Lbyx;-><init>()V

    invoke-interface {v0, p0}, Lbyj;->a(Lbya;)V

    :cond_1
    iget-boolean v0, p0, Lbya;->j:Z

    if-eqz v0, :cond_2

    new-instance v0, Lbzw;

    invoke-direct {v0}, Lbzw;-><init>()V

    invoke-interface {v0, p0}, Lbyj;->a(Lbya;)V

    .line 280
    :cond_2
    if-eq p1, v4, :cond_3

    const/16 v0, 0x22

    if-ne p1, v0, :cond_4

    :cond_3
    iput-char p1, p0, Lbya;->a:C

    .line 283
    iput-boolean p5, p0, Lbya;->b:Z

    .line 284
    return-void

    .line 280
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid quote character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;ILcar;Ljava/util/Stack;Ljava/util/Stack;ZLcar;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 955
    if-eqz p6, :cond_0

    instance-of v0, p3, Lcaq;

    if-eqz v0, :cond_0

    .line 961
    invoke-direct {p0, p1, p2, p5}, Lbya;->a(Ljava/lang/String;ILjava/util/Stack;)Lbye;

    move-result-object v0

    .line 964
    iget-object v1, v0, Lbye;->a:Lcar;

    .line 965
    iget v0, v0, Lbye;->b:I

    invoke-interface {v1}, Lcar;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 967
    invoke-direct {p0, p1, v0}, Lbya;->a(Ljava/lang/String;I)Lbye;

    move-result-object v1

    .line 971
    if-eqz v1, :cond_2

    .line 972
    iget-object p3, v1, Lbye;->a:Lcar;

    .line 973
    iget p2, v1, Lbye;->b:I

    .line 981
    :cond_0
    instance-of v0, p3, Lcaq;

    if-eqz v0, :cond_3

    .line 982
    new-instance v0, Lbyc;

    invoke-direct {v0, p3, p7}, Lbyc;-><init>(Lcar;Lcar;)V

    .line 984
    invoke-virtual {p4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_1
    :goto_0
    invoke-interface {p3}, Lcar;->c()I

    move-result v0

    add-int/2addr v0, p2

    .line 1053
    :cond_2
    return v0

    .line 985
    :cond_3
    instance-of v0, p3, Lcag;

    if-eqz v0, :cond_8

    .line 988
    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 989
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyc;

    .line 994
    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, v0, Lbyc;->a:Lcar;

    instance-of v0, v0, Lcaq;

    if-nez v0, :cond_5

    .line 995
    invoke-direct {p0, p5, p4}, Lbya;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    .line 997
    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 998
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyc;

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 1000
    goto :goto_1

    .line 1004
    :cond_5
    invoke-virtual {p4}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1005
    new-instance v0, Lbxy;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_6
    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbyc;

    .line 1012
    iget-object v0, v1, Lbyc;->a:Lcar;

    instance-of v0, v0, Lcaq;

    if-nez v0, :cond_7

    .line 1013
    new-instance v0, Lbxy;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_7
    iget-object v0, v1, Lbyc;->b:Lcar;

    if-eqz v0, :cond_1

    .line 1018
    invoke-virtual {p5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 1020
    new-instance v0, Lbyd;

    iget-object v5, v1, Lbyc;->b:Lcar;

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lbyd;-><init>(Lbya;Ljava/lang/Object;Ljava/lang/Object;Lcar;Lcar;)V

    .line 1023
    invoke-virtual {p5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1027
    :cond_8
    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1028
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyc;

    .line 1032
    :goto_2
    if-eqz v0, :cond_a

    iget-object v0, v0, Lbyc;->a:Lcar;

    invoke-interface {v0}, Lcar;->b()I

    move-result v0

    invoke-interface {p3}, Lcar;->b()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 1034
    invoke-direct {p0, p5, p4}, Lbya;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    .line 1036
    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1037
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyc;

    goto :goto_2

    :cond_9
    move-object v0, v3

    .line 1040
    goto :goto_2

    .line 1045
    :cond_a
    new-instance v0, Lbyc;

    invoke-direct {v0, p3, p7}, Lbyc;-><init>(Lcar;Lcar;)V

    .line 1048
    invoke-virtual {p4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    move-object v0, v3

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;I)Lbye;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v4

    .line 1350
    :goto_0
    if-ge p2, v5, :cond_4

    .line 1352
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lbya;->a:C

    if-ne v1, v2, :cond_5

    .line 1353
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 1357
    :goto_1
    rem-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 1358
    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v4

    .line 1363
    :goto_2
    if-ge v3, v6, :cond_3

    .line 1364
    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcar;

    .line 1366
    invoke-interface {v0}, Lcar;->c()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    .line 1376
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v2, v7, :cond_0

    .line 1378
    add-int/lit8 v2, p2, 0x2

    .line 1384
    :goto_3
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcar;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1386
    new-instance v1, Lbye;

    invoke-direct {v1, v0, p2}, Lbye;-><init>(Lcar;I)V

    move-object v0, v1

    .line 1404
    :goto_4
    return-object v0

    .line 1380
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_3

    .line 1393
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {v0}, Lcar;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v2, v7, :cond_2

    .line 1395
    new-instance v1, Lbye;

    invoke-direct {v1, v0, p2}, Lbye;-><init>(Lcar;I)V

    move-object v0, v1

    .line 1398
    goto :goto_4

    .line 1363
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1350
    :cond_3
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    goto :goto_0

    .line 1404
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;ILjava/util/Stack;)Lbye;
    .locals 5

    .prologue
    .line 1105
    const/4 v1, 0x1

    .line 1106
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    move v1, p2

    .line 1110
    :goto_0
    if-lez v0, :cond_3

    .line 1111
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Lbya;->a(Ljava/lang/String;I)Lbye;

    move-result-object v2

    .line 1114
    if-nez v2, :cond_0

    .line 1115
    new-instance v0, Lbxy;

    const-string v1, "Function is not closed."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_0
    iget-object v1, v2, Lbye;->a:Lcar;

    instance-of v1, v1, Lcaq;

    if-eqz v1, :cond_2

    .line 1117
    add-int/lit8 v0, v0, 0x1

    .line 1123
    :cond_1
    :goto_1
    iget v1, v2, Lbye;->b:I

    goto :goto_0

    .line 1118
    :cond_2
    iget-object v1, v2, Lbye;->a:Lcar;

    instance-of v1, v1, Lcag;

    if-eqz v1, :cond_1

    .line 1119
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1127
    :cond_3
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyb;

    .line 1133
    iget-object v3, v0, Lbyb;->b:Lcar;

    .line 1134
    iget-object v0, v0, Lbyb;->a:Ljava/lang/String;

    .line 1138
    :try_start_0
    invoke-direct {p0, v0}, Lbya;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    iget-object v4, p0, Lbya;->d:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyh;

    .line 1147
    if-nez v0, :cond_4

    .line 1148
    new-instance v0, Lbxy;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A function is not defined (index="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :catch_0
    move-exception v1

    .line 1140
    new-instance v2, Lbxy;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid function name of \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lbxy;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1152
    :cond_4
    new-instance v4, Lbyf;

    invoke-direct {v4, v0, v1, v3}, Lbyf;-><init>(Lbyh;Ljava/lang/String;Lcar;)V

    .line 1154
    invoke-virtual {p3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    return-object v2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lbya;->e(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lbya;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method private a(Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1170
    .line 1172
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1176
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 1180
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1181
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 1185
    :goto_1
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyc;

    iget-object v4, v0, Lbyc;->a:Lcar;

    .line 1188
    new-instance v0, Lbyd;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lbyd;-><init>(Lbya;Ljava/lang/Object;Ljava/lang/Object;Lcar;Lcar;)V

    .line 1192
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    return-void

    :cond_0
    move-object v2, v5

    goto :goto_1

    :cond_1
    move-object v3, v5

    goto :goto_0
.end method

.method private b(Ljava/util/Stack;Ljava/util/Stack;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1218
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1222
    invoke-direct {p0, p2, p1}, Lbya;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    goto :goto_0

    .line 1228
    :cond_0
    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 1229
    new-instance v0, Lbxy;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :cond_1
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 1235
    instance-of v1, v0, Lbyd;

    if-eqz v1, :cond_3

    .line 1237
    check-cast v0, Lbyd;

    invoke-virtual {v0, v4}, Lbyd;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 1325
    :cond_2
    :goto_1
    return-object v0

    .line 1241
    :cond_3
    instance-of v1, v0, Lbyb;

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 1242
    check-cast v1, Lbyb;

    .line 1244
    check-cast v0, Lbyb;

    iget-object v0, v0, Lbyb;->a:Ljava/lang/String;

    .line 1245
    invoke-virtual {p0, v0}, Lbya;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    invoke-virtual {p0, v0}, Lbya;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1250
    :try_start_0
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    iget-object v0, v1, Lbyb;->b:Lcar;

    if-eqz v0, :cond_b

    .line 1259
    new-instance v0, Ljava/lang/Double;

    iget-object v1, v1, Lbyb;->b:Lcar;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcar;->a(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 1265
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    new-instance v1, Lbxy;

    const-string v2, "Expression is invalid."

    invoke-direct {v1, v2, v0}, Lbxy;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1267
    :cond_4
    iget-object v1, v1, Lbyb;->b:Lcar;

    if-eqz v1, :cond_2

    .line 1268
    new-instance v0, Lbxy;

    const-string v1, "Invalid operand for unary operator."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_5
    instance-of v1, v0, Lbyf;

    if-eqz v1, :cond_8

    .line 1273
    check-cast v0, Lbyf;

    .line 1274
    iget-object v2, v0, Lbyf;->a:Lbyh;

    .line 1275
    iget-object v1, v0, Lbyf;->b:Ljava/lang/String;

    .line 1277
    iget-boolean v3, p0, Lbya;->b:Z

    if-eqz v3, :cond_6

    .line 1278
    invoke-virtual {p0, v1}, Lbya;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    :cond_6
    invoke-virtual {p0, v1}, Lbya;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    :try_start_1
    invoke-interface {v2, p0, v1}, Lbyh;->a(Lbya;Ljava/lang/String;)Lbyl;

    move-result-object v2

    .line 1287
    iget-object v1, v2, Lbyl;->a:Ljava/lang/String;

    .line 1289
    iget v3, v2, Lbyl;->b:I

    if-nez v3, :cond_7

    .line 1292
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 1295
    iget-object v1, v0, Lbyf;->c:Lcar;

    if-eqz v1, :cond_a

    .line 1296
    new-instance v1, Ljava/lang/Double;

    iget-object v0, v0, Lbyf;->c:Lcar;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcar;->a(D)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    .line 1302
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1304
    :cond_7
    iget v2, v2, Lbyl;->b:I

    if-ne v2, v4, :cond_9

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v3, p0, Lbya;->a:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lbya;->a:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1313
    iget-object v0, v0, Lbyf;->c:Lcar;

    if-eqz v0, :cond_9

    .line 1314
    new-instance v0, Lbxy;

    const-string v1, "Invalid operand for unary operator."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lbyi; {:try_start_1 .. :try_end_1} :catch_1

    .line 1318
    :catch_1
    move-exception v0

    .line 1319
    new-instance v1, Lbxy;

    invoke-virtual {v0}, Lbyi;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbxy;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1321
    :cond_8
    new-instance v0, Lbxy;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v2

    goto :goto_3

    :cond_b
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lbya;->p:Lbyg;

    if-eqz v1, :cond_0

    .line 442
    :try_start_0
    iget-object v0, p0, Lbya;->p:Lbyg;

    invoke-interface {v0}, Lbyg;->a()Ljava/lang/String;
    :try_end_0
    .catch Lbyi; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 452
    :cond_0
    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lbya;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    :cond_1
    if-nez v0, :cond_2

    .line 459
    new-instance v0, Lbxy;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not resolve variable with name equal to \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    new-instance v1, Lbxy;

    invoke-virtual {v0}, Lbyi;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbxy;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 464
    :cond_2
    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1457
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1458
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    .line 1459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not start with a number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_1
    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a quote character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_2
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 1468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a quote character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :cond_3
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 1474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain an open brace character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    .line 1477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a closed brace character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1479
    :cond_5
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 1480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a pound sign character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1485
    :cond_6
    iget-object v0, p0, Lbya;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1487
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1488
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcar;

    .line 1490
    invoke-interface {v0}, Lcar;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 1491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain an operator symbol."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :cond_8
    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    .line 1499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a special character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1501
    :cond_9
    const-string v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    .line 1502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a special character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_a
    const-string v0, "^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    .line 1505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a special character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_b
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    .line 1508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a special character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_c
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .prologue
    .line 613
    const/4 v0, 0x1

    iget-object v1, p0, Lbya;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lbya;->k:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_d

    :try_start_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbya;->o:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbya;->n:Ljava/util/Stack;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_c

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lbya;->l:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lbya;->n:Ljava/util/Stack;

    iget-object v0, p0, Lbya;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lbya;->o:Ljava/util/Stack;

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v0}, Lbya;->a(Ljava/lang/String;I)Lbye;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v3, v10, Lbye;->a:Lcar;

    iget v2, v10, Lbye;->b:I

    :cond_4
    if-gt v2, v0, :cond_5

    const/4 v1, -0x1

    if-ne v2, v1, :cond_8

    :cond_5
    iget-object v4, p0, Lbya;->o:Ljava/util/Stack;

    const/4 v1, -0x1

    if-ne v2, v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    new-instance v0, Lbxy;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    const-string v1, ""

    iput-object v1, p0, Lbya;->k:Ljava/lang/String;

    new-instance v1, Lbxy;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbxy;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_6
    :try_start_2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    goto :goto_3

    :cond_7
    new-instance v5, Lbyb;

    invoke-direct {v5, v1, v7}, Lbyb;-><init>(Ljava/lang/String;Lcar;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    :cond_8
    if-ne v2, v0, :cond_f

    iget-object v1, v10, Lbye;->a:Lcar;

    invoke-interface {v1}, Lcar;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v8, :cond_9

    if-nez v0, :cond_b

    :cond_9
    iget-object v0, v10, Lbye;->a:Lcar;

    invoke-interface {v0}, Lcar;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    if-nez v7, :cond_a

    iget-object v7, v10, Lbye;->a:Lcar;

    :goto_4
    iget-object v1, v10, Lbye;->a:Lcar;

    instance-of v1, v1, Lcag;

    if-nez v1, :cond_f

    const/4 v6, 0x0

    const/4 v1, 0x1

    :goto_5
    move v8, v1

    goto/16 :goto_1

    :cond_a
    new-instance v1, Lbxy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Consecutive unary operators are not allowed (index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object v4, p0, Lbya;->n:Ljava/util/Stack;

    iget-object v5, p0, Lbya;->o:Ljava/util/Stack;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lbya;->a(Ljava/lang/String;ILcar;Ljava/util/Stack;Ljava/util/Stack;ZLcar;)I

    move-result v0

    const/4 v7, 0x0

    goto :goto_4

    :cond_c
    iget-object v0, p0, Lbya;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lbya;->l:Ljava/util/Stack;

    iget-object v0, p0, Lbya;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lbya;->m:Ljava/util/Stack;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 615
    :cond_d
    iget-object v0, p0, Lbya;->n:Ljava/util/Stack;

    iget-object v1, p0, Lbya;->o:Ljava/util/Stack;

    invoke-direct {p0, v0, v1}, Lbya;->b(Ljava/util/Stack;Ljava/util/Stack;)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p0, v0}, Lbya;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez p2, :cond_e

    .line 620
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 623
    :cond_e
    return-object v0

    :cond_f
    move v1, v8

    goto :goto_5
.end method

.method public final a(Lbyh;)V
    .locals 2

    .prologue
    .line 327
    invoke-interface {p1}, Lbyh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbya;->e(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lbya;->d:Ljava/util/Map;

    invoke-interface {p1}, Lbyh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyh;

    .line 333
    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lbya;->d:Ljava/util/Map;

    invoke-interface {p1}, Lbyh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A function with the same name already exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lbya;->a:C

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lbya;->a:C

    if-ne v2, v3, :cond_0

    .line 1429
    :goto_0
    return v0

    .line 1425
    :cond_0
    iget-char v0, p0, Lbya;->a:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1426
    new-instance v0, Lbxy;

    const-string v1, "Invalid use of quotes."

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 1429
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1560
    sget-object v0, Lbxx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1562
    if-gez v0, :cond_3

    .line 1620
    :goto_0
    return-object p1

    .line 1566
    :goto_1
    if-ltz v1, :cond_1

    .line 1570
    if-ltz v1, :cond_0

    .line 1573
    sget-object v2, Lbxx;->b:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1575
    if-le v2, v1, :cond_1

    .line 1577
    sget-object v3, Lbxx;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1584
    :try_start_0
    invoke-direct {p0, v1}, Lbya;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    invoke-direct {p0, v1}, Lbya;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lbxx;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lbxx;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1596
    invoke-static {v0, v1, v2}, Lbxz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1607
    :cond_0
    sget-object v1, Lbxx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    new-instance v2, Lbxy;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid variable name of \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lbxy;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1612
    :cond_1
    sget-object v1, Lbxx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1614
    if-ltz v1, :cond_2

    .line 1615
    new-instance v0, Lbxy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A variable has not been closed (index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbxy;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object p1, v0

    .line 1620
    goto/16 :goto_0

    :cond_3
    move v1, v0

    move-object v0, p1

    goto/16 :goto_1
.end method

.method protected final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1636
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1641
    new-instance v0, Lbya;

    iget-char v1, p0, Lbya;->a:C

    iget-boolean v2, p0, Lbya;->h:Z

    iget-boolean v3, p0, Lbya;->i:Z

    iget-boolean v4, p0, Lbya;->j:Z

    iget-boolean v5, p0, Lbya;->b:Z

    invoke-direct/range {v0 .. v5}, Lbya;-><init>(CZZZZ)V

    .line 1644
    iget-object v1, p0, Lbya;->d:Ljava/util/Map;

    iput-object v1, v0, Lbya;->d:Ljava/util/Map;

    .line 1645
    iget-object v1, p0, Lbya;->e:Ljava/util/Map;

    iput-object v1, v0, Lbya;->e:Ljava/util/Map;

    .line 1646
    iget-object v1, p0, Lbya;->p:Lbyg;

    iput-object v1, v0, Lbya;->p:Lbyg;

    .line 1648
    new-instance v1, Lbxw;

    invoke-direct {v1, p1}, Lbxw;-><init>(Ljava/lang/String;)V

    .line 1651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    :goto_0
    invoke-virtual {v1}, Lbxw;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1654
    invoke-virtual {v1}, Lbxw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1657
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v3, v4}, Lbya;->a(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1662
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    new-instance v1, Lbxy;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbxy;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1665
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1668
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1670
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1672
    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1676
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1678
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1682
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
