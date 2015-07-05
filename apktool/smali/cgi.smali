.class public abstract Lcgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcgi$a;
    }
.end annotation


# static fields
.field private static final b:Lcgi;

.field private static final c:Lcgi;

.field private static final d:Lcgi;

.field private static final e:Lcgi;

.field private static final f:Lcgi;

.field private static final g:Lcgi;

.field private static final h:Lcgi;

.field private static final i:Lcgi;

.field private static final j:Lcgi;

.field private static final k:Lcgi;

.field private static final l:Lcgi;

.field private static final m:Lcgi;

.field private static final n:Lcgi;

.field private static final o:Lcgi;

.field private static final p:Lcgi;

.field private static final q:Lcgi;

.field private static final r:Lcgi;

.field private static final s:Lcgi;

.field private static final t:Lcgi;

.field private static final u:Lcgi;

.field private static final v:Lcgi;

.field private static final w:Lcgi;

.field private static final x:Lcgi;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v0, Lcgi$a;

    const-string v1, "era"

    const/4 v2, 0x1

    invoke-static {}, Lcgn;->l()Lcgn;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->b:Lcgi;

    .line 76
    new-instance v0, Lcgi$a;

    const-string v1, "yearOfEra"

    const/4 v2, 0x2

    invoke-static {}, Lcgn;->j()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->l()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->c:Lcgi;

    .line 79
    new-instance v0, Lcgi$a;

    const-string v1, "centuryOfEra"

    const/4 v2, 0x3

    invoke-static {}, Lcgn;->k()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->l()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->d:Lcgi;

    .line 82
    new-instance v0, Lcgi$a;

    const-string v1, "yearOfCentury"

    const/4 v2, 0x4

    invoke-static {}, Lcgn;->j()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->k()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->e:Lcgi;

    .line 85
    new-instance v0, Lcgi$a;

    const-string v1, "year"

    const/4 v2, 0x5

    invoke-static {}, Lcgn;->j()Lcgn;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->f:Lcgi;

    .line 88
    new-instance v0, Lcgi$a;

    const-string v1, "dayOfYear"

    const/4 v2, 0x6

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->j()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->g:Lcgi;

    .line 91
    new-instance v0, Lcgi$a;

    const-string v1, "monthOfYear"

    const/4 v2, 0x7

    invoke-static {}, Lcgn;->i()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->j()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->h:Lcgi;

    .line 94
    new-instance v0, Lcgi$a;

    const-string v1, "dayOfMonth"

    const/16 v2, 0x8

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->i()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->i:Lcgi;

    .line 97
    new-instance v0, Lcgi$a;

    const-string v1, "weekyearOfCentury"

    const/16 v2, 0x9

    invoke-static {}, Lcgn;->h()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->k()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->j:Lcgi;

    .line 100
    new-instance v0, Lcgi$a;

    const-string v1, "weekyear"

    const/16 v2, 0xa

    invoke-static {}, Lcgn;->h()Lcgn;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->k:Lcgi;

    .line 103
    new-instance v0, Lcgi$a;

    const-string v1, "weekOfWeekyear"

    const/16 v2, 0xb

    invoke-static {}, Lcgn;->g()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->h()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->l:Lcgi;

    .line 106
    new-instance v0, Lcgi$a;

    const-string v1, "dayOfWeek"

    const/16 v2, 0xc

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->g()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->m:Lcgi;

    .line 110
    new-instance v0, Lcgi$a;

    const-string v1, "halfdayOfDay"

    const/16 v2, 0xd

    invoke-static {}, Lcgn;->e()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->n:Lcgi;

    .line 113
    new-instance v0, Lcgi$a;

    const-string v1, "hourOfHalfday"

    const/16 v2, 0xe

    invoke-static {}, Lcgn;->d()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->e()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->o:Lcgi;

    .line 116
    new-instance v0, Lcgi$a;

    const-string v1, "clockhourOfHalfday"

    const/16 v2, 0xf

    invoke-static {}, Lcgn;->d()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->e()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->p:Lcgi;

    .line 119
    new-instance v0, Lcgi$a;

    const-string v1, "clockhourOfDay"

    const/16 v2, 0x10

    invoke-static {}, Lcgn;->d()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->q:Lcgi;

    .line 122
    new-instance v0, Lcgi$a;

    const-string v1, "hourOfDay"

    const/16 v2, 0x11

    invoke-static {}, Lcgn;->d()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->r:Lcgi;

    .line 125
    new-instance v0, Lcgi$a;

    const-string v1, "minuteOfDay"

    const/16 v2, 0x12

    invoke-static {}, Lcgn;->c()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->s:Lcgi;

    .line 128
    new-instance v0, Lcgi$a;

    const-string v1, "minuteOfHour"

    const/16 v2, 0x13

    invoke-static {}, Lcgn;->c()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->d()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->t:Lcgi;

    .line 131
    new-instance v0, Lcgi$a;

    const-string v1, "secondOfDay"

    const/16 v2, 0x14

    invoke-static {}, Lcgn;->b()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->u:Lcgi;

    .line 134
    new-instance v0, Lcgi$a;

    const-string v1, "secondOfMinute"

    const/16 v2, 0x15

    invoke-static {}, Lcgn;->b()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->c()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->v:Lcgi;

    .line 137
    new-instance v0, Lcgi$a;

    const-string v1, "millisOfDay"

    const/16 v2, 0x16

    invoke-static {}, Lcgn;->a()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->f()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->w:Lcgi;

    .line 140
    new-instance v0, Lcgi$a;

    const-string v1, "millisOfSecond"

    const/16 v2, 0x17

    invoke-static {}, Lcgn;->a()Lcgn;

    move-result-object v3

    invoke-static {}, Lcgn;->b()Lcgn;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcgi$a;-><init>(Ljava/lang/String;BLcgn;Lcgn;)V

    sput-object v0, Lcgi;->x:Lcgi;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcgi;->a:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static a()Lcgi;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcgi;->x:Lcgi;

    return-object v0
.end method

.method public static b()Lcgi;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcgi;->w:Lcgi;

    return-object v0
.end method

.method public static c()Lcgi;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcgi;->v:Lcgi;

    return-object v0
.end method

.method public static d()Lcgi;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcgi;->u:Lcgi;

    return-object v0
.end method

.method public static e()Lcgi;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcgi;->t:Lcgi;

    return-object v0
.end method

.method public static f()Lcgi;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcgi;->s:Lcgi;

    return-object v0
.end method

.method public static g()Lcgi;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcgi;->r:Lcgi;

    return-object v0
.end method

.method public static h()Lcgi;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcgi;->q:Lcgi;

    return-object v0
.end method

.method public static i()Lcgi;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcgi;->o:Lcgi;

    return-object v0
.end method

.method public static j()Lcgi;
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcgi;->p:Lcgi;

    return-object v0
.end method

.method public static k()Lcgi;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcgi;->n:Lcgi;

    return-object v0
.end method

.method public static l()Lcgi;
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcgi;->m:Lcgi;

    return-object v0
.end method

.method public static m()Lcgi;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcgi;->i:Lcgi;

    return-object v0
.end method

.method public static n()Lcgi;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcgi;->g:Lcgi;

    return-object v0
.end method

.method public static o()Lcgi;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcgi;->l:Lcgi;

    return-object v0
.end method

.method public static p()Lcgi;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcgi;->k:Lcgi;

    return-object v0
.end method

.method public static q()Lcgi;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcgi;->j:Lcgi;

    return-object v0
.end method

.method public static r()Lcgi;
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcgi;->h:Lcgi;

    return-object v0
.end method

.method public static s()Lcgi;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcgi;->f:Lcgi;

    return-object v0
.end method

.method public static t()Lcgi;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcgi;->c:Lcgi;

    return-object v0
.end method

.method public static u()Lcgi;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcgi;->e:Lcgi;

    return-object v0
.end method

.method public static v()Lcgi;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcgi;->d:Lcgi;

    return-object v0
.end method

.method public static w()Lcgi;
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcgi;->b:Lcgi;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcgf;)Lcgh;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcgi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract x()Lcgn;
.end method

.method public abstract y()Lcgn;
.end method
