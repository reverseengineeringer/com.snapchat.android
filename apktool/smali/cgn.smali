.class public abstract Lcgn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcgn$a;
    }
.end annotation


# static fields
.field static final a:Lcgn;

.field static final b:Lcgn;

.field static final c:Lcgn;

.field static final d:Lcgn;

.field static final e:Lcgn;

.field static final f:Lcgn;

.field static final g:Lcgn;

.field static final h:Lcgn;

.field static final i:Lcgn;

.field static final j:Lcgn;

.field static final k:Lcgn;

.field static final l:Lcgn;


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcgn$a;

    const-string v1, "eras"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->a:Lcgn;

    .line 62
    new-instance v0, Lcgn$a;

    const-string v1, "centuries"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->b:Lcgn;

    .line 64
    new-instance v0, Lcgn$a;

    const-string v1, "weekyears"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->c:Lcgn;

    .line 66
    new-instance v0, Lcgn$a;

    const-string v1, "years"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->d:Lcgn;

    .line 68
    new-instance v0, Lcgn$a;

    const-string v1, "months"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->e:Lcgn;

    .line 70
    new-instance v0, Lcgn$a;

    const-string v1, "weeks"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->f:Lcgn;

    .line 72
    new-instance v0, Lcgn$a;

    const-string v1, "days"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->g:Lcgn;

    .line 74
    new-instance v0, Lcgn$a;

    const-string v1, "halfdays"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->h:Lcgn;

    .line 76
    new-instance v0, Lcgn$a;

    const-string v1, "hours"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->i:Lcgn;

    .line 78
    new-instance v0, Lcgn$a;

    const-string v1, "minutes"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->j:Lcgn;

    .line 80
    new-instance v0, Lcgn$a;

    const-string v1, "seconds"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->k:Lcgn;

    .line 82
    new-instance v0, Lcgn$a;

    const-string v1, "millis"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcgn$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lcgn;->l:Lcgn;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcgn;->m:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static a()Lcgn;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcgn;->l:Lcgn;

    return-object v0
.end method

.method public static b()Lcgn;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcgn;->k:Lcgn;

    return-object v0
.end method

.method public static c()Lcgn;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcgn;->j:Lcgn;

    return-object v0
.end method

.method public static d()Lcgn;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcgn;->i:Lcgn;

    return-object v0
.end method

.method public static e()Lcgn;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcgn;->h:Lcgn;

    return-object v0
.end method

.method public static f()Lcgn;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcgn;->g:Lcgn;

    return-object v0
.end method

.method public static g()Lcgn;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcgn;->f:Lcgn;

    return-object v0
.end method

.method public static h()Lcgn;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcgn;->c:Lcgn;

    return-object v0
.end method

.method public static i()Lcgn;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcgn;->e:Lcgn;

    return-object v0
.end method

.method public static j()Lcgn;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcgn;->d:Lcgn;

    return-object v0
.end method

.method public static k()Lcgn;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcgn;->b:Lcgn;

    return-object v0
.end method

.method public static l()Lcgn;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcgn;->a:Lcgn;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcgf;)Lcgm;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcgn;->m:Ljava/lang/String;

    return-object v0
.end method
