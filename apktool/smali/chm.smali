.class public final Lchm;
.super Lcij;
.source "SourceFile"


# static fields
.field public static final a:Lchm;

.field public static final b:Lchm;

.field public static final c:Lchm;

.field public static final d:Lchm;

.field public static final e:Lchm;

.field public static final f:Lchm;

.field public static final g:Lchm;

.field public static final h:Lchm;

.field public static final i:Lchm;

.field public static final j:Lchm;

.field private static final l:Lclf;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    new-instance v0, Lchm;

    invoke-direct {v0, v6}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->a:Lchm;

    .line 47
    new-instance v0, Lchm;

    invoke-direct {v0, v7}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->b:Lchm;

    .line 49
    new-instance v0, Lchm;

    invoke-direct {v0, v3}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->c:Lchm;

    .line 51
    new-instance v0, Lchm;

    invoke-direct {v0, v4}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->d:Lchm;

    .line 53
    new-instance v0, Lchm;

    invoke-direct {v0, v8}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->e:Lchm;

    .line 55
    new-instance v0, Lchm;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->f:Lchm;

    .line 57
    new-instance v0, Lchm;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->g:Lchm;

    .line 59
    new-instance v0, Lchm;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->h:Lchm;

    .line 61
    new-instance v0, Lchm;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->i:Lchm;

    .line 63
    new-instance v0, Lchm;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lchm;-><init>(I)V

    sput-object v0, Lchm;->j:Lchm;

    .line 66
    sget-object v0, Lcle;->a:Lclf;

    if-nez v0, :cond_0

    new-instance v0, Lclg;

    invoke-direct {v0}, Lclg;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0}, Lclg;->b()V

    new-instance v2, Lclg$d;

    invoke-direct {v2, v1}, Lclg$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v2}, Lclg;->a(Lcli;Lclh;)Lclg;

    invoke-virtual {v0, v6}, Lclg;->a(I)V

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lclg;->a(Ljava/lang/String;)Lclg;

    move-result-object v0

    invoke-virtual {v0, v7}, Lclg;->a(I)V

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lclg;->a(Ljava/lang/String;)Lclg;

    move-result-object v0

    invoke-virtual {v0, v3}, Lclg;->a(I)V

    const-string v1, "W"

    invoke-virtual {v0, v1}, Lclg;->a(Ljava/lang/String;)Lclg;

    move-result-object v0

    invoke-virtual {v0, v4}, Lclg;->a(I)V

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lclg;->a(Ljava/lang/String;)Lclg;

    move-result-object v2

    const-string v4, "T"

    invoke-virtual {v2}, Lclg;->b()V

    iget-object v1, v2, Lclg;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lclg$f;

    sget-object v1, Lclg$d;->a:Lclg$d;

    sget-object v3, Lclg$d;->a:Lclg$d;

    invoke-direct {v0, v4, v4, v1, v3}, Lclg$f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcli;Lclh;)V

    invoke-virtual {v2, v0, v0}, Lclg;->a(Lcli;Lclh;)Lclg;

    move-object v0, v2

    :goto_0
    invoke-virtual {v0, v8}, Lclg;->a(I)V

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lclg;->a(Ljava/lang/String;)Lclg;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lclg;->a(I)V

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lclg;->a(Ljava/lang/String;)Lclg;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lclg;->a(I)V

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lclg;->a(Ljava/lang/String;)Lclg;

    move-result-object v0

    invoke-virtual {v0}, Lclg;->a()Lclf;

    move-result-object v0

    sput-object v0, Lcle;->a:Lclf;

    :cond_0
    sget-object v0, Lcle;->a:Lclf;

    invoke-static {}, Lchv;->a()Lchv;

    move-result-object v2

    iget-object v1, v0, Lclf;->d:Lchv;

    if-ne v2, v1, :cond_4

    :goto_1
    sput-object v0, Lchm;->l:Lclf;

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lclg$f;

    if-eqz v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclg$f;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have two adjacent separators"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lclg;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v5, Lclg$f;

    aget-object v0, v1, v6

    check-cast v0, Lcli;

    aget-object v1, v1, v7

    check-cast v1, Lclh;

    invoke-direct {v5, v4, v4, v0, v1}, Lclg$f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcli;Lclh;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lclf;

    iget-object v3, v0, Lclf;->a:Lcli;

    iget-object v4, v0, Lclf;->b:Lclh;

    iget-object v0, v0, Lclf;->c:Ljava/util/Locale;

    invoke-direct {v1, v3, v4, v0, v2}, Lclf;-><init>(Lcli;Lclh;Ljava/util/Locale;Lchv;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v3, v1

    goto :goto_3
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcij;-><init>(I)V

    .line 217
    return-void
.end method

.method public static a(Lcia;Lcia;)Lchm;
    .locals 6

    .prologue
    .line 118
    invoke-static {}, Lcho;->f()Lcho;

    move-result-object v0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadableInstant objects must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lchk;->b(Lcia;)Lchg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcho;->a(Lchg;)Lchn;

    move-result-object v0

    invoke-interface {p1}, Lcia;->c()J

    move-result-wide v2

    invoke-interface {p0}, Lcia;->c()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lchn;->b(JJ)I

    move-result v1

    .line 119
    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lchm;

    invoke-direct {v0, v1}, Lchm;-><init>(I)V

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lchm;->a:Lchm;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lchm;->b:Lchm;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lchm;->c:Lchm;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lchm;->d:Lchm;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lchm;->e:Lchm;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lchm;->f:Lchm;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lchm;->g:Lchm;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lchm;->h:Lchm;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lchm;->i:Lchm;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lchm;->j:Lchm;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_9
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x7fffffff -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lcho;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcho;->f()Lcho;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lchv;
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lchv;->a()Lchv;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcij;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
