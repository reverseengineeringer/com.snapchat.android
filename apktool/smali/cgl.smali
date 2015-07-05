.class public final Lcgl;
.super Lchi;
.source "SourceFile"


# static fields
.field public static final a:Lcgl;

.field public static final b:Lcgl;

.field public static final c:Lcgl;

.field public static final d:Lcgl;

.field public static final e:Lcgl;

.field public static final f:Lcgl;

.field public static final g:Lcgl;

.field public static final h:Lcgl;

.field public static final i:Lcgl;

.field public static final j:Lcgl;

.field private static final l:Lcke;


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
    new-instance v0, Lcgl;

    invoke-direct {v0, v6}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->a:Lcgl;

    .line 47
    new-instance v0, Lcgl;

    invoke-direct {v0, v7}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->b:Lcgl;

    .line 49
    new-instance v0, Lcgl;

    invoke-direct {v0, v3}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->c:Lcgl;

    .line 51
    new-instance v0, Lcgl;

    invoke-direct {v0, v4}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->d:Lcgl;

    .line 53
    new-instance v0, Lcgl;

    invoke-direct {v0, v8}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->e:Lcgl;

    .line 55
    new-instance v0, Lcgl;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->f:Lcgl;

    .line 57
    new-instance v0, Lcgl;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->g:Lcgl;

    .line 59
    new-instance v0, Lcgl;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->h:Lcgl;

    .line 61
    new-instance v0, Lcgl;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->i:Lcgl;

    .line 63
    new-instance v0, Lcgl;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lcgl;-><init>(I)V

    sput-object v0, Lcgl;->j:Lcgl;

    .line 66
    sget-object v0, Lckd;->a:Lcke;

    if-nez v0, :cond_0

    new-instance v0, Lckf;

    invoke-direct {v0}, Lckf;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0}, Lckf;->b()V

    new-instance v2, Lckf$d;

    invoke-direct {v2, v1}, Lckf$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v2}, Lckf;->a(Lckh;Lckg;)Lckf;

    invoke-virtual {v0, v6}, Lckf;->a(I)V

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lckf;->a(Ljava/lang/String;)Lckf;

    move-result-object v0

    invoke-virtual {v0, v7}, Lckf;->a(I)V

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lckf;->a(Ljava/lang/String;)Lckf;

    move-result-object v0

    invoke-virtual {v0, v3}, Lckf;->a(I)V

    const-string v1, "W"

    invoke-virtual {v0, v1}, Lckf;->a(Ljava/lang/String;)Lckf;

    move-result-object v0

    invoke-virtual {v0, v4}, Lckf;->a(I)V

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lckf;->a(Ljava/lang/String;)Lckf;

    move-result-object v2

    const-string v4, "T"

    invoke-virtual {v2}, Lckf;->b()V

    iget-object v1, v2, Lckf;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lckf$f;

    sget-object v1, Lckf$d;->a:Lckf$d;

    sget-object v3, Lckf$d;->a:Lckf$d;

    invoke-direct {v0, v4, v4, v1, v3}, Lckf$f;-><init>(Ljava/lang/String;Ljava/lang/String;Lckh;Lckg;)V

    invoke-virtual {v2, v0, v0}, Lckf;->a(Lckh;Lckg;)Lckf;

    move-object v0, v2

    :goto_0
    invoke-virtual {v0, v8}, Lckf;->a(I)V

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lckf;->a(Ljava/lang/String;)Lckf;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lckf;->a(I)V

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lckf;->a(Ljava/lang/String;)Lckf;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lckf;->a(I)V

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lckf;->a(Ljava/lang/String;)Lckf;

    move-result-object v0

    invoke-virtual {v0}, Lckf;->a()Lcke;

    move-result-object v0

    sput-object v0, Lckd;->a:Lcke;

    :cond_0
    sget-object v0, Lckd;->a:Lcke;

    invoke-static {}, Lcgu;->a()Lcgu;

    move-result-object v2

    iget-object v1, v0, Lcke;->d:Lcgu;

    if-ne v2, v1, :cond_4

    :goto_1
    sput-object v0, Lcgl;->l:Lcke;

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

    instance-of v5, v5, Lckf$f;

    if-eqz v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckf$f;

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
    invoke-static {v3}, Lckf;->a(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v5, Lckf$f;

    aget-object v0, v1, v6

    check-cast v0, Lckh;

    aget-object v1, v1, v7

    check-cast v1, Lckg;

    invoke-direct {v5, v4, v4, v0, v1}, Lckf$f;-><init>(Ljava/lang/String;Ljava/lang/String;Lckh;Lckg;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lcke;

    iget-object v3, v0, Lcke;->a:Lckh;

    iget-object v4, v0, Lcke;->b:Lckg;

    iget-object v0, v0, Lcke;->c:Ljava/util/Locale;

    invoke-direct {v1, v3, v4, v0, v2}, Lcke;-><init>(Lckh;Lckg;Ljava/util/Locale;Lcgu;)V

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
    invoke-direct {p0, p1}, Lchi;-><init>(I)V

    .line 217
    return-void
.end method

.method public static a(Lcgz;Lcgz;)Lcgl;
    .locals 6

    .prologue
    .line 118
    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReadableInstant objects must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcgj;->b(Lcgz;)Lcgf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcgn;->a(Lcgf;)Lcgm;

    move-result-object v0

    invoke-interface {p1}, Lcgz;->c()J

    move-result-wide v2

    invoke-interface {p0}, Lcgz;->c()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcgm;->b(JJ)I

    move-result v1

    .line 119
    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lcgl;

    invoke-direct {v0, v1}, Lcgl;-><init>(I)V

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcgl;->a:Lcgl;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcgl;->b:Lcgl;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcgl;->c:Lcgl;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcgl;->d:Lcgl;

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcgl;->e:Lcgl;

    goto :goto_0

    :sswitch_5
    sget-object v0, Lcgl;->f:Lcgl;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcgl;->g:Lcgl;

    goto :goto_0

    :sswitch_7
    sget-object v0, Lcgl;->h:Lcgl;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcgl;->i:Lcgl;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lcgl;->j:Lcgl;

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
.method public final a()Lcgn;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcgu;
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lcgu;->a()Lcgu;

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

    iget v1, p0, Lchi;->k:I

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
