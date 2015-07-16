.class public final Lciv;
.super Lcik;
.source "SourceFile"


# static fields
.field private static final E:Lchi;

.field private static final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lchl;",
            "Lciv;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:Lciv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcir;

    const-string v1, "BE"

    invoke-direct {v0, v1}, Lcir;-><init>(Ljava/lang/String;)V

    sput-object v0, Lciv;->E:Lchi;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lciv;->F:Ljava/util/Map;

    .line 74
    sget-object v0, Lchl;->a:Lchl;

    invoke-static {v0}, Lciv;->b(Lchl;)Lciv;

    move-result-object v0

    sput-object v0, Lciv;->G:Lciv;

    return-void
.end method

.method private constructor <init>(Lchg;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcik;-><init>(Lchg;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public static declared-synchronized b(Lchl;)Lciv;
    .locals 6

    .prologue
    .line 104
    const-class v1, Lciv;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 105
    :try_start_0
    invoke-static {}, Lchl;->a()Lchl;

    move-result-object p0

    .line 108
    :cond_0
    sget-object v2, Lciv;->F:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    sget-object v0, Lciv;->F:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lciv;

    .line 110
    if-nez v0, :cond_1

    .line 112
    new-instance v3, Lciv;

    invoke-static {p0}, Lciw;->b(Lchl;)Lciw;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lciv;-><init>(Lchg;Ljava/lang/Object;)V

    .line 114
    new-instance v4, Lchh;

    invoke-direct {v4, v3}, Lchh;-><init>(Lchg;)V

    .line 115
    new-instance v0, Lciv;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcjg;->a(Lchg;Lchy;Lchy;)Lcjg;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Lciv;-><init>(Lchg;Ljava/lang/Object;)V

    .line 116
    sget-object v3, Lciv;->F:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lchl;)Lchg;
    .locals 1

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    invoke-static {}, Lchl;->a()Lchl;

    move-result-object p1

    .line 163
    :cond_0
    invoke-virtual {p0}, Lciv;->a()Lchl;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 166
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lciv;->b(Lchl;)Lciv;

    move-result-object p0

    goto :goto_0
.end method

.method protected final a(Lcik$a;)V
    .locals 4

    .prologue
    const/16 v3, 0x21f

    .line 215
    iget-object v0, p0, Lcik;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p1, Lcik$a;->E:Lchi;

    .line 218
    new-instance v1, Lckl;

    new-instance v2, Lcks;

    invoke-direct {v2, p0, v0}, Lcks;-><init>(Lchg;Lchi;)V

    invoke-direct {v1, v2, v3}, Lckl;-><init>(Lchi;I)V

    iput-object v1, p1, Lcik$a;->E:Lchi;

    .line 222
    new-instance v0, Lckg;

    iget-object v1, p1, Lcik$a;->E:Lchi;

    invoke-static {}, Lchj;->t()Lchj;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lckg;-><init>(Lchi;Lchj;)V

    iput-object v0, p1, Lcik$a;->F:Lchi;

    .line 227
    iget-object v0, p1, Lcik$a;->B:Lchi;

    .line 228
    new-instance v1, Lckl;

    new-instance v2, Lcks;

    invoke-direct {v2, p0, v0}, Lcks;-><init>(Lchg;Lchi;)V

    invoke-direct {v1, v2, v3}, Lckl;-><init>(Lchi;I)V

    iput-object v1, p1, Lcik$a;->B:Lchi;

    .line 231
    new-instance v0, Lckl;

    iget-object v1, p1, Lcik$a;->F:Lchi;

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2}, Lckl;-><init>(Lchi;I)V

    .line 232
    new-instance v1, Lckh;

    invoke-static {}, Lchj;->v()Lchj;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lckh;-><init>(Lchi;Lchj;)V

    iput-object v1, p1, Lcik$a;->H:Lchi;

    .line 235
    new-instance v1, Lckp;

    iget-object v0, p1, Lcik$a;->H:Lchi;

    check-cast v0, Lckh;

    invoke-direct {v1, v0}, Lckp;-><init>(Lckh;)V

    .line 237
    new-instance v0, Lckl;

    invoke-static {}, Lchj;->u()Lchj;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lckl;-><init>(Lchi;Lchj;)V

    iput-object v0, p1, Lcik$a;->G:Lchi;

    .line 240
    new-instance v0, Lckp;

    iget-object v1, p1, Lcik$a;->B:Lchi;

    invoke-static {}, Lchj;->q()Lchj;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lckp;-><init>(Lchi;Lchj;)V

    .line 242
    new-instance v1, Lckl;

    invoke-static {}, Lchj;->q()Lchj;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lckl;-><init>(Lchi;Lchj;)V

    iput-object v1, p1, Lcik$a;->C:Lchi;

    .line 245
    sget-object v0, Lciv;->E:Lchi;

    iput-object v0, p1, Lcik$a;->I:Lchi;

    .line 247
    :cond_0
    return-void
.end method

.method public final b()Lchg;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lciv;->G:Lciv;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 178
    if-ne p0, p1, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 181
    :cond_0
    instance-of v0, p1, Lciv;

    if-eqz v0, :cond_1

    .line 182
    check-cast p1, Lciv;

    .line 183
    invoke-virtual {p0}, Lciv;->a()Lchl;

    move-result-object v0

    invoke-virtual {p1}, Lciv;->a()Lchl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchl;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 195
    const-string v0, "Buddhist"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    invoke-virtual {p0}, Lciv;->a()Lchl;

    move-result-object v1

    invoke-virtual {v1}, Lchl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    const-string v0, "BuddhistChronology"

    .line 207
    invoke-virtual {p0}, Lciv;->a()Lchl;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lchl;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_0
    return-object v0
.end method
