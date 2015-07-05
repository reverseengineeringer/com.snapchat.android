.class public final Lcif;
.super Lchj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcif$a;,
        Lcif$b;,
        Lcif$c;
    }
.end annotation


# instance fields
.field final E:Lcgg;

.field final F:Lcgg;

.field private transient G:Lcif;


# direct methods
.method private constructor <init>(Lcgf;Lcgg;Lcgg;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lchj;-><init>(Lcgf;Ljava/lang/Object;)V

    .line 101
    iput-object p2, p0, Lcif;->E:Lcgg;

    .line 102
    iput-object p3, p0, Lcif;->F:Lcgg;

    .line 103
    return-void
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
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcgh;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 280
    :goto_0
    return-object v0

    .line 271
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgh;

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Lcif$a;

    invoke-virtual {p1}, Lcgh;->d()Lcgm;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v3

    invoke-virtual {p1}, Lcgh;->e()Lcgm;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v4

    invoke-virtual {p1}, Lcgh;->f()Lcgm;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcif$a;-><init>(Lcif;Lcgh;Lcgm;Lcgm;Lcgm;)V

    .line 279
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcgm;Ljava/util/HashMap;)Lcgm;
    .locals 1
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
    .line 256
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcgm;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 264
    :goto_0
    return-object v0

    .line 259
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgm;

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Lcif$b;

    invoke-direct {v0, p0, p1}, Lcif$b;-><init>(Lcif;Lcgm;)V

    .line 263
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Lcgf;Lcgx;Lcgx;)Lcif;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a chronology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    .line 72
    :goto_0
    if-nez p2, :cond_2

    .line 74
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 75
    invoke-interface {v0, v1}, Lcgx;->a(Lcgz;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lower limit must be come before than the upper limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-interface {p1}, Lcgx;->a()Lcgg;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p2}, Lcgx;->a()Lcgg;

    move-result-object v1

    goto :goto_1

    .line 81
    :cond_3
    new-instance v2, Lcif;

    check-cast v0, Lcgg;

    check-cast v1, Lcgg;

    invoke-direct {v2, p0, v0, v1}, Lcif;-><init>(Lcgf;Lcgg;Lcgg;)V

    return-object v2
.end method


# virtual methods
.method public final a(IIII)J
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lchj;->a:Lcgf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcgf;->a(IIII)J

    move-result-wide v0

    .line 178
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lcif;->a(JLjava/lang/String;)V

    .line 179
    return-wide v0
.end method

.method public final a(IIIIIII)J
    .locals 8

    .prologue
    .line 187
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

    .line 190
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lcif;->a(JLjava/lang/String;)V

    .line 191
    return-wide v0
.end method

.method public final a(Lcgk;)Lcgf;
    .locals 3

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-static {}, Lcgk;->a()Lcgk;

    move-result-object p1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcif;->a()Lcgk;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 170
    :goto_0
    return-object p0

    .line 145
    :cond_1
    sget-object v0, Lcgk;->a:Lcgk;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcif;->G:Lcif;

    if-eqz v0, :cond_2

    .line 146
    iget-object p0, p0, Lcif;->G:Lcif;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcif;->E:Lcgg;

    .line 150
    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v0}, Lcgg;->e()Lcgt;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lcgt;->a(Lcgk;)V

    .line 153
    invoke-virtual {v0}, Lcgt;->a()Lcgg;

    move-result-object v0

    .line 156
    :cond_3
    iget-object v1, p0, Lcif;->F:Lcgg;

    .line 157
    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {v1}, Lcgg;->e()Lcgt;

    move-result-object v1

    .line 159
    invoke-virtual {v1, p1}, Lcgt;->a(Lcgk;)V

    .line 160
    invoke-virtual {v1}, Lcgt;->a()Lcgg;

    move-result-object v1

    .line 163
    :cond_4
    iget-object v2, p0, Lchj;->a:Lcgf;

    invoke-virtual {v2, p1}, Lcgf;->a(Lcgk;)Lcgf;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcif;->a(Lcgf;Lcgx;Lcgx;)Lcif;

    move-result-object v0

    .line 166
    sget-object v1, Lcgk;->a:Lcgk;

    if-ne p1, v1, :cond_5

    .line 167
    iput-object v0, p0, Lcif;->G:Lcif;

    :cond_5
    move-object p0, v0

    .line 170
    goto :goto_0
.end method

.method final a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcif;->E:Lcgg;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lchg;->a:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 286
    new-instance v0, Lcif$c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, v1}, Lcif$c;-><init>(Lcif;Ljava/lang/String;Z)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcif;->F:Lcgg;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lchg;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 289
    new-instance v0, Lcif$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcif$c;-><init>(Lcif;Ljava/lang/String;Z)V

    throw v0

    .line 291
    :cond_1
    return-void
.end method

.method protected final a(Lchj$a;)V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    iget-object v1, p1, Lchj$a;->l:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->l:Lcgm;

    .line 214
    iget-object v1, p1, Lchj$a;->k:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->k:Lcgm;

    .line 215
    iget-object v1, p1, Lchj$a;->j:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->j:Lcgm;

    .line 216
    iget-object v1, p1, Lchj$a;->i:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->i:Lcgm;

    .line 217
    iget-object v1, p1, Lchj$a;->h:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->h:Lcgm;

    .line 218
    iget-object v1, p1, Lchj$a;->g:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->g:Lcgm;

    .line 219
    iget-object v1, p1, Lchj$a;->f:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->f:Lcgm;

    .line 221
    iget-object v1, p1, Lchj$a;->e:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->e:Lcgm;

    .line 222
    iget-object v1, p1, Lchj$a;->d:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->d:Lcgm;

    .line 223
    iget-object v1, p1, Lchj$a;->c:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->c:Lcgm;

    .line 224
    iget-object v1, p1, Lchj$a;->b:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->b:Lcgm;

    .line 225
    iget-object v1, p1, Lchj$a;->a:Lcgm;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgm;Ljava/util/HashMap;)Lcgm;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->a:Lcgm;

    .line 229
    iget-object v1, p1, Lchj$a;->E:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->E:Lcgh;

    .line 230
    iget-object v1, p1, Lchj$a;->F:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->F:Lcgh;

    .line 231
    iget-object v1, p1, Lchj$a;->G:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->G:Lcgh;

    .line 232
    iget-object v1, p1, Lchj$a;->H:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->H:Lcgh;

    .line 233
    iget-object v1, p1, Lchj$a;->I:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->I:Lcgh;

    .line 234
    iget-object v1, p1, Lchj$a;->x:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->x:Lcgh;

    .line 235
    iget-object v1, p1, Lchj$a;->y:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->y:Lcgh;

    .line 236
    iget-object v1, p1, Lchj$a;->z:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->z:Lcgh;

    .line 237
    iget-object v1, p1, Lchj$a;->D:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->D:Lcgh;

    .line 238
    iget-object v1, p1, Lchj$a;->A:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->A:Lcgh;

    .line 239
    iget-object v1, p1, Lchj$a;->B:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->B:Lcgh;

    .line 240
    iget-object v1, p1, Lchj$a;->C:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->C:Lcgh;

    .line 242
    iget-object v1, p1, Lchj$a;->m:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->m:Lcgh;

    .line 243
    iget-object v1, p1, Lchj$a;->n:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->n:Lcgh;

    .line 244
    iget-object v1, p1, Lchj$a;->o:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->o:Lcgh;

    .line 245
    iget-object v1, p1, Lchj$a;->p:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->p:Lcgh;

    .line 246
    iget-object v1, p1, Lchj$a;->q:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->q:Lcgh;

    .line 247
    iget-object v1, p1, Lchj$a;->r:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->r:Lcgh;

    .line 248
    iget-object v1, p1, Lchj$a;->s:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->s:Lcgh;

    .line 249
    iget-object v1, p1, Lchj$a;->u:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->u:Lcgh;

    .line 250
    iget-object v1, p1, Lchj$a;->t:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->t:Lcgh;

    .line 251
    iget-object v1, p1, Lchj$a;->v:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v1

    iput-object v1, p1, Lchj$a;->v:Lcgh;

    .line 252
    iget-object v1, p1, Lchj$a;->w:Lcgh;

    invoke-direct {p0, v1, v0}, Lcif;->a(Lcgh;Ljava/util/HashMap;)Lcgh;

    move-result-object v0

    iput-object v0, p1, Lchj$a;->w:Lcgh;

    .line 253
    return-void
.end method

.method public final b()Lcgf;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcgk;->a:Lcgk;

    invoke-virtual {p0, v0}, Lcif;->a(Lcgk;)Lcgf;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    if-ne p0, p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    instance-of v2, p1, Lcif;

    if-nez v2, :cond_2

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_2
    check-cast p1, Lcif;

    .line 310
    iget-object v2, p0, Lchj;->a:Lcgf;

    iget-object v3, p1, Lchj;->a:Lcgf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcif;->E:Lcgg;

    iget-object v3, p1, Lcif;->E:Lcgg;

    invoke-static {v2, v3}, Lcjh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcif;->F:Lcgg;

    iget-object v3, p1, Lcif;->F:Lcgg;

    invoke-static {v2, v3}, Lcjh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 323
    const v2, 0x12ea67c5

    iget-object v0, p0, Lcif;->E:Lcgg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcif;->E:Lcgg;

    invoke-virtual {v0}, Lcgg;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 325
    iget-object v2, p0, Lcif;->F:Lcgg;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcif;->F:Lcgg;

    invoke-virtual {v1}, Lcgg;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 326
    iget-object v1, p0, Lchj;->a:Lcgf;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 327
    return v0

    :cond_1
    move v0, v1

    .line 323
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LimitChronology["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lchj;->a:Lcgf;

    invoke-virtual {v1}, Lcgf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcif;->E:Lcgg;

    if-nez v0, :cond_0

    const-string v0, "NoLimit"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcif;->F:Lcgg;

    if-nez v0, :cond_1

    const-string v0, "NoLimit"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcif;->E:Lcgg;

    invoke-virtual {v0}, Lcgg;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcif;->F:Lcgg;

    invoke-virtual {v0}, Lcgg;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
