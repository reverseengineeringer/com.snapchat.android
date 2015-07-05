.class public final Lchu;
.super Lchj;
.source "SourceFile"


# static fields
.field private static final E:Lcgh;

.field private static final F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcgk;",
            "Lchu;",
            ">;"
        }
    .end annotation
.end field

.field private static final G:Lchu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lchq;

    const-string v1, "BE"

    invoke-direct {v0, v1}, Lchq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lchu;->E:Lcgh;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lchu;->F:Ljava/util/Map;

    .line 74
    sget-object v0, Lcgk;->a:Lcgk;

    invoke-static {v0}, Lchu;->b(Lcgk;)Lchu;

    move-result-object v0

    sput-object v0, Lchu;->G:Lchu;

    return-void
.end method

.method private constructor <init>(Lcgf;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lchj;-><init>(Lcgf;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public static declared-synchronized b(Lcgk;)Lchu;
    .locals 6

    .prologue
    .line 104
    const-class v1, Lchu;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 105
    :try_start_0
    invoke-static {}, Lcgk;->a()Lcgk;

    move-result-object p0

    .line 108
    :cond_0
    sget-object v2, Lchu;->F:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    sget-object v0, Lchu;->F:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchu;

    .line 110
    if-nez v0, :cond_1

    .line 112
    new-instance v3, Lchu;

    invoke-static {p0}, Lchv;->b(Lcgk;)Lchv;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lchu;-><init>(Lcgf;Ljava/lang/Object;)V

    .line 114
    new-instance v4, Lcgg;

    invoke-direct {v4, v3}, Lcgg;-><init>(Lcgf;)V

    .line 115
    new-instance v0, Lchu;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcif;->a(Lcgf;Lcgx;Lcgx;)Lcif;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Lchu;-><init>(Lcgf;Ljava/lang/Object;)V

    .line 116
    sget-object v3, Lchu;->F:Ljava/util/Map;

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
.method public final a(Lcgk;)Lcgf;
    .locals 1

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    invoke-static {}, Lcgk;->a()Lcgk;

    move-result-object p1

    .line 163
    :cond_0
    invoke-virtual {p0}, Lchu;->a()Lcgk;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 166
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lchu;->b(Lcgk;)Lchu;

    move-result-object p0

    goto :goto_0
.end method

.method protected final a(Lchj$a;)V
    .locals 4

    .prologue
    const/16 v3, 0x21f

    .line 215
    iget-object v0, p0, Lchj;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p1, Lchj$a;->E:Lcgh;

    .line 218
    new-instance v1, Lcjk;

    new-instance v2, Lcjr;

    invoke-direct {v2, p0, v0}, Lcjr;-><init>(Lcgf;Lcgh;)V

    invoke-direct {v1, v2, v3}, Lcjk;-><init>(Lcgh;I)V

    iput-object v1, p1, Lchj$a;->E:Lcgh;

    .line 222
    new-instance v0, Lcjf;

    iget-object v1, p1, Lchj$a;->E:Lcgh;

    invoke-static {}, Lcgi;->t()Lcgi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcjf;-><init>(Lcgh;Lcgi;)V

    iput-object v0, p1, Lchj$a;->F:Lcgh;

    .line 227
    iget-object v0, p1, Lchj$a;->B:Lcgh;

    .line 228
    new-instance v1, Lcjk;

    new-instance v2, Lcjr;

    invoke-direct {v2, p0, v0}, Lcjr;-><init>(Lcgf;Lcgh;)V

    invoke-direct {v1, v2, v3}, Lcjk;-><init>(Lcgh;I)V

    iput-object v1, p1, Lchj$a;->B:Lcgh;

    .line 231
    new-instance v0, Lcjk;

    iget-object v1, p1, Lchj$a;->F:Lcgh;

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2}, Lcjk;-><init>(Lcgh;I)V

    .line 232
    new-instance v1, Lcjg;

    invoke-static {}, Lcgi;->v()Lcgi;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcjg;-><init>(Lcgh;Lcgi;)V

    iput-object v1, p1, Lchj$a;->H:Lcgh;

    .line 235
    new-instance v1, Lcjo;

    iget-object v0, p1, Lchj$a;->H:Lcgh;

    check-cast v0, Lcjg;

    invoke-direct {v1, v0}, Lcjo;-><init>(Lcjg;)V

    .line 237
    new-instance v0, Lcjk;

    invoke-static {}, Lcgi;->u()Lcgi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcjk;-><init>(Lcgh;Lcgi;)V

    iput-object v0, p1, Lchj$a;->G:Lcgh;

    .line 240
    new-instance v0, Lcjo;

    iget-object v1, p1, Lchj$a;->B:Lcgh;

    invoke-static {}, Lcgi;->q()Lcgi;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcjo;-><init>(Lcgh;Lcgi;)V

    .line 242
    new-instance v1, Lcjk;

    invoke-static {}, Lcgi;->q()Lcgi;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcjk;-><init>(Lcgh;Lcgi;)V

    iput-object v1, p1, Lchj$a;->C:Lcgh;

    .line 245
    sget-object v0, Lchu;->E:Lcgh;

    iput-object v0, p1, Lchj$a;->I:Lcgh;

    .line 247
    :cond_0
    return-void
.end method

.method public final b()Lcgf;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lchu;->G:Lchu;

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
    instance-of v0, p1, Lchu;

    if-eqz v0, :cond_1

    .line 182
    check-cast p1, Lchu;

    .line 183
    invoke-virtual {p0}, Lchu;->a()Lcgk;

    move-result-object v0

    invoke-virtual {p1}, Lchu;->a()Lcgk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcgk;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lchu;->a()Lcgk;

    move-result-object v1

    invoke-virtual {v1}, Lcgk;->hashCode()I

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
    invoke-virtual {p0}, Lchu;->a()Lcgk;

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

    iget-object v1, v1, Lcgk;->c:Ljava/lang/String;

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
