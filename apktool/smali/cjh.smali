.class public final Lcjh;
.super Lcik;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcjh$a;,
        Lcjh$b;
    }
.end annotation


# direct methods
.method private constructor <init>(Lchg;Lchl;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcik;-><init>(Lchg;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method private a(J)J
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    check-cast v0, Lchl;

    .line 139
    invoke-virtual {v0, p1, p2}, Lchl;->c(J)I

    move-result v1

    .line 140
    int-to-long v2, v1

    sub-long v2, p1, v2

    .line 141
    invoke-virtual {v0, v2, v3}, Lchl;->b(J)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 142
    new-instance v1, Lchq;

    iget-object v0, v0, Lchl;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lchq;-><init>(JLjava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    return-wide v2
.end method

.method private a(Lchi;Ljava/util/HashMap;)Lchi;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchi;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lchi;"
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lchi;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 221
    :goto_0
    return-object v0

    .line 212
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchi;

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Lcjh$a;

    iget-object v2, p0, Lcik;->b:Ljava/lang/Object;

    check-cast v2, Lchl;

    invoke-virtual {p1}, Lchi;->d()Lchn;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v3

    invoke-virtual {p1}, Lchi;->e()Lchn;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v4

    invoke-virtual {p1}, Lchi;->f()Lchn;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcjh$a;-><init>(Lchi;Lchl;Lchn;Lchn;Lchn;)V

    .line 220
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lchn;Ljava/util/HashMap;)Lchn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchn;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lchn;"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lchn;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 205
    :goto_0
    return-object v0

    .line 200
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchn;

    goto :goto_0

    .line 203
    :cond_2
    new-instance v1, Lcjh$b;

    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    check-cast v0, Lchl;

    invoke-direct {v1, p1, v0}, Lcjh$b;-><init>(Lchn;Lchl;)V

    .line 204
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 205
    goto :goto_0
.end method

.method public static a(Lchg;Lchl;)Lcjh;
    .locals 2

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a chronology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lchg;->b()Lchg;

    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTC chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    if-nez p1, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DateTimeZone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v1, Lcjh;

    invoke-direct {v1, v0, p1}, Lcjh;-><init>(Lchg;Lchl;)V

    return-object v1
.end method

.method static a(Lchn;)Z
    .locals 4

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lchn;->d()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(IIII)J
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcik;->a:Lchg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchg;->a(IIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcjh;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(IIIIIII)J
    .locals 8

    .prologue
    .line 118
    iget-object v0, p0, Lcik;->a:Lchg;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lchg;->a(IIIIIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcjh;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lchl;)Lchg;
    .locals 2

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    invoke-static {}, Lchl;->a()Lchl;

    move-result-object p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 102
    :goto_0
    return-object p0

    .line 99
    :cond_1
    sget-object v0, Lchl;->a:Lchl;

    if-ne p1, v0, :cond_2

    .line 100
    iget-object p0, p0, Lcik;->a:Lchg;

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Lcjh;

    iget-object v1, p0, Lcik;->a:Lchg;

    invoke-direct {v0, v1, p1}, Lcjh;-><init>(Lchg;Lchl;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a()Lchl;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    check-cast v0, Lchl;

    return-object v0
.end method

.method protected final a(Lcik$a;)V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    iget-object v1, p1, Lcik$a;->l:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->l:Lchn;

    .line 155
    iget-object v1, p1, Lcik$a;->k:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->k:Lchn;

    .line 156
    iget-object v1, p1, Lcik$a;->j:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->j:Lchn;

    .line 157
    iget-object v1, p1, Lcik$a;->i:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->i:Lchn;

    .line 158
    iget-object v1, p1, Lcik$a;->h:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->h:Lchn;

    .line 159
    iget-object v1, p1, Lcik$a;->g:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->g:Lchn;

    .line 160
    iget-object v1, p1, Lcik$a;->f:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->f:Lchn;

    .line 162
    iget-object v1, p1, Lcik$a;->e:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->e:Lchn;

    .line 163
    iget-object v1, p1, Lcik$a;->d:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->d:Lchn;

    .line 164
    iget-object v1, p1, Lcik$a;->c:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->c:Lchn;

    .line 165
    iget-object v1, p1, Lcik$a;->b:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->b:Lchn;

    .line 166
    iget-object v1, p1, Lcik$a;->a:Lchn;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->a:Lchn;

    .line 170
    iget-object v1, p1, Lcik$a;->E:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->E:Lchi;

    .line 171
    iget-object v1, p1, Lcik$a;->F:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->F:Lchi;

    .line 172
    iget-object v1, p1, Lcik$a;->G:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->G:Lchi;

    .line 173
    iget-object v1, p1, Lcik$a;->H:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->H:Lchi;

    .line 174
    iget-object v1, p1, Lcik$a;->I:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->I:Lchi;

    .line 175
    iget-object v1, p1, Lcik$a;->x:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->x:Lchi;

    .line 176
    iget-object v1, p1, Lcik$a;->y:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->y:Lchi;

    .line 177
    iget-object v1, p1, Lcik$a;->z:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->z:Lchi;

    .line 178
    iget-object v1, p1, Lcik$a;->D:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->D:Lchi;

    .line 179
    iget-object v1, p1, Lcik$a;->A:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->A:Lchi;

    .line 180
    iget-object v1, p1, Lcik$a;->B:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->B:Lchi;

    .line 181
    iget-object v1, p1, Lcik$a;->C:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->C:Lchi;

    .line 183
    iget-object v1, p1, Lcik$a;->m:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->m:Lchi;

    .line 184
    iget-object v1, p1, Lcik$a;->n:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->n:Lchi;

    .line 185
    iget-object v1, p1, Lcik$a;->o:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->o:Lchi;

    .line 186
    iget-object v1, p1, Lcik$a;->p:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->p:Lchi;

    .line 187
    iget-object v1, p1, Lcik$a;->q:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->q:Lchi;

    .line 188
    iget-object v1, p1, Lcik$a;->r:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->r:Lchi;

    .line 189
    iget-object v1, p1, Lcik$a;->s:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->s:Lchi;

    .line 190
    iget-object v1, p1, Lcik$a;->u:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->u:Lchi;

    .line 191
    iget-object v1, p1, Lcik$a;->t:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->t:Lchi;

    .line 192
    iget-object v1, p1, Lcik$a;->v:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->v:Lchi;

    .line 193
    iget-object v1, p1, Lcik$a;->w:Lchi;

    invoke-direct {p0, v1, v0}, Lcjh;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v0

    iput-object v0, p1, Lcik$a;->w:Lchi;

    .line 194
    return-void
.end method

.method public final b()Lchg;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcik;->a:Lchg;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 234
    if-ne p0, p1, :cond_0

    move v0, v2

    .line 241
    :goto_0
    return v0

    .line 237
    :cond_0
    instance-of v0, p1, Lcjh;

    if-nez v0, :cond_1

    move v0, v3

    .line 238
    goto :goto_0

    .line 240
    :cond_1
    check-cast p1, Lcjh;

    .line 241
    iget-object v0, p0, Lcik;->a:Lchg;

    iget-object v1, p1, Lcik;->a:Lchg;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    check-cast v0, Lchl;

    iget-object v1, p1, Lcik;->b:Ljava/lang/Object;

    check-cast v1, Lchl;

    invoke-virtual {v0, v1}, Lchl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 253
    const v1, 0x4fba5

    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    check-cast v0, Lchl;

    invoke-virtual {v0}, Lchl;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    add-int/2addr v0, v1

    iget-object v1, p0, Lcik;->a:Lchg;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZonedChronology["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcik;->a:Lchg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    check-cast v0, Lchl;

    iget-object v0, v0, Lchl;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
