.class public final Lcjg;
.super Lcik;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcjg$a;,
        Lcjg$b;,
        Lcjg$c;
    }
.end annotation


# instance fields
.field final E:Lchh;

.field final F:Lchh;

.field private transient G:Lcjg;


# direct methods
.method private constructor <init>(Lchg;Lchh;Lchh;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcik;-><init>(Lchg;Ljava/lang/Object;)V

    .line 101
    iput-object p2, p0, Lcjg;->E:Lchh;

    .line 102
    iput-object p3, p0, Lcjg;->F:Lchh;

    .line 103
    return-void
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
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lchi;->c()Z

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

    check-cast v0, Lchi;

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Lcjg$a;

    invoke-virtual {p1}, Lchi;->d()Lchn;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v3

    invoke-virtual {p1}, Lchi;->e()Lchn;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v4

    invoke-virtual {p1}, Lchi;->f()Lchn;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcjg$a;-><init>(Lcjg;Lchi;Lchn;Lchn;Lchn;)V

    .line 279
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lchn;Ljava/util/HashMap;)Lchn;
    .locals 1
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
    .line 256
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lchn;->b()Z

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

    check-cast v0, Lchn;

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Lcjg$b;

    invoke-direct {v0, p0, p1}, Lcjg$b;-><init>(Lcjg;Lchn;)V

    .line 263
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Lchg;Lchy;Lchy;)Lcjg;
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
    invoke-interface {v0, v1}, Lchy;->a(Lcia;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lower limit must be come before than the upper limit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-interface {p1}, Lchy;->a()Lchh;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p2}, Lchy;->a()Lchh;

    move-result-object v1

    goto :goto_1

    .line 81
    :cond_3
    new-instance v2, Lcjg;

    check-cast v0, Lchh;

    check-cast v1, Lchh;

    invoke-direct {v2, p0, v0, v1}, Lcjg;-><init>(Lchg;Lchh;Lchh;)V

    return-object v2
.end method


# virtual methods
.method public final a(IIII)J
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcik;->a:Lchg;

    invoke-virtual {v0, p1, p2, p3, p4}, Lchg;->a(IIII)J

    move-result-wide v0

    .line 178
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lcjg;->a(JLjava/lang/String;)V

    .line 179
    return-wide v0
.end method

.method public final a(IIIIIII)J
    .locals 8

    .prologue
    .line 187
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

    .line 190
    const-string v2, "resulting"

    invoke-virtual {p0, v0, v1, v2}, Lcjg;->a(JLjava/lang/String;)V

    .line 191
    return-wide v0
.end method

.method public final a(Lchl;)Lchg;
    .locals 3

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-static {}, Lchl;->a()Lchl;

    move-result-object p1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcjg;->a()Lchl;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 170
    :goto_0
    return-object p0

    .line 145
    :cond_1
    sget-object v0, Lchl;->a:Lchl;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcjg;->G:Lcjg;

    if-eqz v0, :cond_2

    .line 146
    iget-object p0, p0, Lcjg;->G:Lcjg;

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcjg;->E:Lchh;

    .line 150
    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {v0}, Lchh;->e()Lchu;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lchu;->a(Lchl;)V

    .line 153
    invoke-virtual {v0}, Lchu;->a()Lchh;

    move-result-object v0

    .line 156
    :cond_3
    iget-object v1, p0, Lcjg;->F:Lchh;

    .line 157
    if-eqz v1, :cond_4

    .line 158
    invoke-virtual {v1}, Lchh;->e()Lchu;

    move-result-object v1

    .line 159
    invoke-virtual {v1, p1}, Lchu;->a(Lchl;)V

    .line 160
    invoke-virtual {v1}, Lchu;->a()Lchh;

    move-result-object v1

    .line 163
    :cond_4
    iget-object v2, p0, Lcik;->a:Lchg;

    invoke-virtual {v2, p1}, Lchg;->a(Lchl;)Lchg;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcjg;->a(Lchg;Lchy;Lchy;)Lcjg;

    move-result-object v0

    .line 166
    sget-object v1, Lchl;->a:Lchl;

    if-ne p1, v1, :cond_5

    .line 167
    iput-object v0, p0, Lcjg;->G:Lcjg;

    :cond_5
    move-object p0, v0

    .line 170
    goto :goto_0
.end method

.method final a(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcjg;->E:Lchh;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcih;->a:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 286
    new-instance v0, Lcjg$c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p3, v1}, Lcjg$c;-><init>(Lcjg;Ljava/lang/String;Z)V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcjg;->F:Lchh;

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lcih;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 289
    new-instance v0, Lcjg$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcjg$c;-><init>(Lcjg;Ljava/lang/String;Z)V

    throw v0

    .line 291
    :cond_1
    return-void
.end method

.method protected final a(Lcik$a;)V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    iget-object v1, p1, Lcik$a;->l:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->l:Lchn;

    .line 214
    iget-object v1, p1, Lcik$a;->k:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->k:Lchn;

    .line 215
    iget-object v1, p1, Lcik$a;->j:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->j:Lchn;

    .line 216
    iget-object v1, p1, Lcik$a;->i:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->i:Lchn;

    .line 217
    iget-object v1, p1, Lcik$a;->h:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->h:Lchn;

    .line 218
    iget-object v1, p1, Lcik$a;->g:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->g:Lchn;

    .line 219
    iget-object v1, p1, Lcik$a;->f:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->f:Lchn;

    .line 221
    iget-object v1, p1, Lcik$a;->e:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->e:Lchn;

    .line 222
    iget-object v1, p1, Lcik$a;->d:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->d:Lchn;

    .line 223
    iget-object v1, p1, Lcik$a;->c:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->c:Lchn;

    .line 224
    iget-object v1, p1, Lcik$a;->b:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->b:Lchn;

    .line 225
    iget-object v1, p1, Lcik$a;->a:Lchn;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchn;Ljava/util/HashMap;)Lchn;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->a:Lchn;

    .line 229
    iget-object v1, p1, Lcik$a;->E:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->E:Lchi;

    .line 230
    iget-object v1, p1, Lcik$a;->F:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->F:Lchi;

    .line 231
    iget-object v1, p1, Lcik$a;->G:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->G:Lchi;

    .line 232
    iget-object v1, p1, Lcik$a;->H:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->H:Lchi;

    .line 233
    iget-object v1, p1, Lcik$a;->I:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->I:Lchi;

    .line 234
    iget-object v1, p1, Lcik$a;->x:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->x:Lchi;

    .line 235
    iget-object v1, p1, Lcik$a;->y:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->y:Lchi;

    .line 236
    iget-object v1, p1, Lcik$a;->z:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->z:Lchi;

    .line 237
    iget-object v1, p1, Lcik$a;->D:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->D:Lchi;

    .line 238
    iget-object v1, p1, Lcik$a;->A:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->A:Lchi;

    .line 239
    iget-object v1, p1, Lcik$a;->B:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->B:Lchi;

    .line 240
    iget-object v1, p1, Lcik$a;->C:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->C:Lchi;

    .line 242
    iget-object v1, p1, Lcik$a;->m:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->m:Lchi;

    .line 243
    iget-object v1, p1, Lcik$a;->n:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->n:Lchi;

    .line 244
    iget-object v1, p1, Lcik$a;->o:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->o:Lchi;

    .line 245
    iget-object v1, p1, Lcik$a;->p:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->p:Lchi;

    .line 246
    iget-object v1, p1, Lcik$a;->q:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->q:Lchi;

    .line 247
    iget-object v1, p1, Lcik$a;->r:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->r:Lchi;

    .line 248
    iget-object v1, p1, Lcik$a;->s:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->s:Lchi;

    .line 249
    iget-object v1, p1, Lcik$a;->u:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->u:Lchi;

    .line 250
    iget-object v1, p1, Lcik$a;->t:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->t:Lchi;

    .line 251
    iget-object v1, p1, Lcik$a;->v:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v1

    iput-object v1, p1, Lcik$a;->v:Lchi;

    .line 252
    iget-object v1, p1, Lcik$a;->w:Lchi;

    invoke-direct {p0, v1, v0}, Lcjg;->a(Lchi;Ljava/util/HashMap;)Lchi;

    move-result-object v0

    iput-object v0, p1, Lcik$a;->w:Lchi;

    .line 253
    return-void
.end method

.method public final b()Lchg;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lchl;->a:Lchl;

    invoke-virtual {p0, v0}, Lcjg;->a(Lchl;)Lchg;

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
    instance-of v2, p1, Lcjg;

    if-nez v2, :cond_2

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_2
    check-cast p1, Lcjg;

    .line 310
    iget-object v2, p0, Lcik;->a:Lchg;

    iget-object v3, p1, Lcik;->a:Lchg;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcjg;->E:Lchh;

    iget-object v3, p1, Lcjg;->E:Lchh;

    invoke-static {v2, v3}, Lcki;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcjg;->F:Lchh;

    iget-object v3, p1, Lcjg;->F:Lchh;

    invoke-static {v2, v3}, Lcki;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcjg;->E:Lchh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcjg;->E:Lchh;

    invoke-virtual {v0}, Lchh;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 325
    iget-object v2, p0, Lcjg;->F:Lchh;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcjg;->F:Lchh;

    invoke-virtual {v1}, Lchh;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 326
    iget-object v1, p0, Lcik;->a:Lchg;

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

    iget-object v1, p0, Lcik;->a:Lchg;

    invoke-virtual {v1}, Lchg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcjg;->E:Lchh;

    if-nez v0, :cond_0

    const-string v0, "NoLimit"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcjg;->F:Lchh;

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
    iget-object v0, p0, Lcjg;->E:Lchh;

    invoke-virtual {v0}, Lchh;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcjg;->F:Lchh;

    invoke-virtual {v0}, Lchh;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
