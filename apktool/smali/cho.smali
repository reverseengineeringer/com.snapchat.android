.class public abstract Lcho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcho$a;
    }
.end annotation


# static fields
.field static final a:Lcho;

.field static final b:Lcho;

.field static final c:Lcho;

.field static final d:Lcho;

.field static final e:Lcho;

.field static final f:Lcho;

.field static final g:Lcho;

.field static final h:Lcho;

.field static final i:Lcho;

.field static final j:Lcho;

.field static final k:Lcho;

.field static final l:Lcho;


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcho$a;

    const-string v1, "eras"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->a:Lcho;

    .line 62
    new-instance v0, Lcho$a;

    const-string v1, "centuries"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->b:Lcho;

    .line 64
    new-instance v0, Lcho$a;

    const-string v1, "weekyears"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->c:Lcho;

    .line 66
    new-instance v0, Lcho$a;

    const-string v1, "years"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->d:Lcho;

    .line 68
    new-instance v0, Lcho$a;

    const-string v1, "months"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->e:Lcho;

    .line 70
    new-instance v0, Lcho$a;

    const-string v1, "weeks"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->f:Lcho;

    .line 72
    new-instance v0, Lcho$a;

    const-string v1, "days"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->g:Lcho;

    .line 74
    new-instance v0, Lcho$a;

    const-string v1, "halfdays"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->h:Lcho;

    .line 76
    new-instance v0, Lcho$a;

    const-string v1, "hours"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->i:Lcho;

    .line 78
    new-instance v0, Lcho$a;

    const-string v1, "minutes"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->j:Lcho;

    .line 80
    new-instance v0, Lcho$a;

    const-string v1, "seconds"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->k:Lcho;

    .line 82
    new-instance v0, Lcho$a;

    const-string v1, "millis"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcho$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcho;->l:Lcho;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcho;->m:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static a()Lcho;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcho;->l:Lcho;

    return-object v0
.end method

.method public static b()Lcho;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcho;->k:Lcho;

    return-object v0
.end method

.method public static c()Lcho;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcho;->j:Lcho;

    return-object v0
.end method

.method public static d()Lcho;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcho;->i:Lcho;

    return-object v0
.end method

.method public static e()Lcho;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcho;->h:Lcho;

    return-object v0
.end method

.method public static f()Lcho;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcho;->g:Lcho;

    return-object v0
.end method

.method public static g()Lcho;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcho;->f:Lcho;

    return-object v0
.end method

.method public static h()Lcho;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcho;->c:Lcho;

    return-object v0
.end method

.method public static i()Lcho;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcho;->e:Lcho;

    return-object v0
.end method

.method public static j()Lcho;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcho;->d:Lcho;

    return-object v0
.end method

.method public static k()Lcho;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcho;->b:Lcho;

    return-object v0
.end method

.method public static l()Lcho;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcho;->a:Lcho;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lchg;)Lchn;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcho;->m:Ljava/lang/String;

    return-object v0
.end method
