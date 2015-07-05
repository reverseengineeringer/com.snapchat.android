.class public final Lcig;
.super Lchj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcig$a;,
        Lcig$b;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcgf;Lcgk;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lchj;-><init>(Lcgf;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method private a(J)J
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    check-cast v0, Lcgk;

    .line 139
    invoke-virtual {v0, p1, p2}, Lcgk;->c(J)I

    move-result v1

    .line 140
    int-to-long v2, v1

    sub-long v2, p1, v2

    .line 141
    invoke-virtual {v0, v2, v3}, Lcgk;->b(J)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 142
    new-instance v1, Lcgp;

    iget-object v0, v0, Lcgk;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcgp;-><init>(JLjava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    return-wide v2
.end method

.method private a(Lcgh;Ljava/util/HashMap;)Lcgh;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcgh;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcgh;"
        }
    .end annotation

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcgh;->c()Z

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

    check-cast v0, Lcgh;

    goto :goto_0

    .line 215
    :cond_2
    new-instance v0, Lcig$a;

    iget-object v2, p0, Lchj;->b:Ljava/lang/Object;

    check-cast v2, Lcgk;

    invoke-virtual {p1}, Lcgh;->d()Lcgm;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v3

    invoke-virtual {p1}, Lcgh;->e()Lcgm;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v4

    invoke-virtual {p1}, Lcgh;->f()Lcgm;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcig$a;-><init>(Lcgh;Lcgk;Lcgm;Lcgm;Lcgm;)V

    .line 220
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcgm;Ljava/util/HashMap;)Lcgm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcgm;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcgm;"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcgm;->b()Z

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

    check-cast v0, Lcgm;

    goto :goto_0

    .line 203
    :cond_2
    new-instance v1, Lcig$b;

    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    check-cast v0, Lcgk;

    invoke-direct {v1, p1, v0}, Lcig$b;-><init>(Lcgm;Lcgk;)V

    .line 204
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 205
    goto :goto_0
.end method

.method public static a(Lcgf;Lcgk;)Lcig;
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
    invoke-virtual {p0}, Lcgf;->b()Lcgf;

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
    new-instance v1, Lcig;

    invoke-direct {v1, v0, p1}, Lcig;-><init>(Lcgf;Lcgk;)V

    return-object v1
.end method

.method static a(Lcgm;)Z
    .locals 4

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcgm;->d()J

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
    iget-object v0, p0, Lchj;->a:Lcgf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgf;->a(IIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcig;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(IIIIIII)J
    .locals 8

    .prologue
    .line 118
    iget-object v0, p0, Lchj;->a:Lcgf;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcgf;->a(IIIIIII)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcig;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcgk;)Lcgf;
    .locals 2

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    invoke-static {}, Lcgk;->a()Lcgk;

    move-result-object p1

    .line 96
    :cond_0
    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    .line 102
    :goto_0
    return-object p0

    .line 99
    :cond_1
    sget-object v0, Lcgk;->a:Lcgk;

    if-ne p1, v0, :cond_2

    .line 100
    iget-object p0, p0, Lchj;->a:Lcgf;

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Lcig;

    iget-object v1, p0, Lchj;->a:Lcgf;

    invoke-direct {v0, v1, p1}, Lcig;-><init>(Lcgf;Lcgk;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a()Lcgk;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    check-cast v0, Lcgk;

    return-object v0
.end method

.method protected final a(Lchj$a;)V
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    iget-object v1, p1, Lchj$a;->l:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->l:Lcgm;

    .line 155
    iget-object v1, p1, Lchj$a;->k:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->k:Lcgm;

    .line 156
    iget-object v1, p1, Lchj$a;->j:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->j:Lcgm;

    .line 157
    iget-object v1, p1, Lchj$a;->i:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->i:Lcgm;

    .line 158
    iget-object v1, p1, Lchj$a;->h:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->h:Lcgm;

    .line 159
    iget-object v1, p1, Lchj$a;->g:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->g:Lcgm;

    .line 160
    iget-object v1, p1, Lchj$a;->f:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->f:Lcgm;

    .line 162
    iget-object v1, p1, Lchj$a;->e:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->e:Lcgm;

    .line 163
    iget-object v1, p1, Lchj$a;->d:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->d:Lcgm;

    .line 164
    iget-object v1, p1, Lchj$a;->c:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->c:Lcgm;

    .line 165
    iget-object v1, p1, Lchj$a;->b:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->b:Lcgm;

    .line 166
    iget-object v1, p1, Lchj$a;->a:Lcgm;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->a:Lcgm;

    .line 170
    iget-object v1, p1, Lchj$a;->E:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->E:Lcgh;

    .line 171
    iget-object v1, p1, Lchj$a;->F:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->F:Lcgh;

    .line 172
    iget-object v1, p1, Lchj$a;->G:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->G:Lcgh;

    .line 173
    iget-object v1, p1, Lchj$a;->H:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->H:Lcgh;

    .line 174
    iget-object v1, p1, Lchj$a;->I:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->I:Lcgh;

    .line 175
    iget-object v1, p1, Lchj$a;->x:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->x:Lcgh;

    .line 176
    iget-object v1, p1, Lchj$a;->y:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->y:Lcgh;

    .line 177
    iget-object v1, p1, Lchj$a;->z:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->z:Lcgh;

    .line 178
    iget-object v1, p1, Lchj$a;->D:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->D:Lcgh;

    .line 179
    iget-object v1, p1, Lchj$a;->A:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->A:Lcgh;

    .line 180
    iget-object v1, p1, Lchj$a;->B:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->B:Lcgh;

    .line 181
    iget-object v1, p1, Lchj$a;->C:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->C:Lcgh;

    .line 183
    iget-object v1, p1, Lchj$a;->m:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->m:Lcgh;

    .line 184
    iget-object v1, p1, Lchj$a;->n:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->n:Lcgh;

    .line 185
    iget-object v1, p1, Lchj$a;->o:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->o:Lcgh;

    .line 186
    iget-object v1, p1, Lchj$a;->p:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->p:Lcgh;

    .line 187
    iget-object v1, p1, Lchj$a;->q:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->q:Lcgh;

    .line 188
    iget-object v1, p1, Lchj$a;->r:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->r:Lcgh;

    .line 189
    iget-object v1, p1, Lchj$a;->s:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->s:Lcgh;

    .line 190
    iget-object v1, p1, Lchj$a;->u:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->u:Lcgh;

    .line 191
    iget-object v1, p1, Lchj$a;->t:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->t:Lcgh;

    .line 192
    iget-object v1, p1, Lchj$a;->v:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->v:Lcgh;

    .line 193
    iget-object v1, p1, Lchj$a;->w:Lcgh;

    invoke-direct {p0, v1, v0}, Lcig;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v0

    iput-object v0, p1, Lchj$a;->w:Lcgh;

    .line 194
    return-void
.end method

.method public final b()Lcgf;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lchj;->a:Lcgf;

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
    instance-of v0, p1, Lcig;

    if-nez v0, :cond_1

    move v0, v3

    .line 238
    goto :goto_0

    .line 240
    :cond_1
    check-cast p1, Lcig;

    .line 241
    iget-object v0, p0, Lchj;->a:Lcgf;

    iget-object v1, p1, Lchj;->a:Lcgf;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    check-cast v0, Lcgk;

    iget-object v1, p1, Lchj;->b:Ljava/lang/Object;

    check-cast v1, Lcgk;

    invoke-virtual {v0, v1}, Lcgk;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    check-cast v0, Lcgk;

    invoke-virtual {v0}, Lcgk;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    add-int/2addr v0, v1

    iget-object v1, p0, Lchj;->a:Lcgf;

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

    iget-object v1, p0, Lchj;->a:Lcgf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    check-cast v0, Lcgk;

    iget-object v0, v0, Lcgk;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
