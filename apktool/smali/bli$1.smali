.class final Lbli$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbmj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbli;


# direct methods
.method constructor <init>(Lbli;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lbli$1;->a:Lbli;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbma;)Lbmc;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lbli$1;->a:Lbli;

    invoke-virtual {v0, p1}, Lbli;->a(Lbma;)Lbmc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbmc;)Lbmr;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lbli$1;->a:Lbli;

    invoke-virtual {v0, p1}, Lbli;->a(Lbmc;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lbli$1;->a:Lbli;

    invoke-virtual {v0}, Lbli;->b()V

    .line 152
    return-void
.end method

.method public final a(Lbmc;Lbmc;)V
    .locals 8

    .prologue
    .line 148
    new-instance v1, Lbli$c;

    invoke-direct {v1, p2}, Lbli$c;-><init>(Lbmc;)V

    iget-object v0, p1, Lbmc;->g:Lbmd;

    check-cast v0, Lbli$b;

    invoke-static {v0}, Lbli$b;->a(Lbli$b;)Lbmg$c;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, v2, Lbmg$c;->d:Lbmg;

    iget-object v4, v2, Lbmg$c;->a:Ljava/lang/String;

    iget-wide v6, v2, Lbmg$c;->b:J

    invoke-static {v3, v4, v6, v7}, Lbmg;->a(Lbmg;Ljava/lang/String;J)Lbmg$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lbli$c;->a(Lbmg$a;)V

    invoke-virtual {v0}, Lbmg$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v1

    invoke-static {v0}, Lbli;->a(Lbmg$a;)V

    goto :goto_0
.end method

.method public final a(Lbms;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lbli$1;->a:Lbli;

    invoke-virtual {v0, p1}, Lbli;->a(Lbms;)V

    .line 155
    return-void
.end method

.method public final b(Lbma;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lbli$1;->a:Lbli;

    invoke-virtual {v0, p1}, Lbli;->b(Lbma;)V

    .line 146
    return-void
.end method
