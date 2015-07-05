.class public final Lbms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbms$a;
    }
.end annotation


# instance fields
.field public final a:Lbma;

.field public final b:Lbmc;


# direct methods
.method private constructor <init>(Lbma;Lbmc;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lbms;->a:Lbma;

    .line 42
    iput-object p2, p0, Lbms;->b:Lbmc;

    .line 43
    return-void
.end method

.method public synthetic constructor <init>(Lbma;Lbmc;B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lbms;-><init>(Lbma;Lbmc;)V

    return-void
.end method

.method public static a(Lbmc;Lbma;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    iget v1, p0, Lbmc;->c:I

    sparse-switch v1, :sswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 72
    :sswitch_0
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lbmc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lbmc;->g()Lblj;

    move-result-object v1

    iget v1, v1, Lblj;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 74
    invoke-virtual {p0}, Lbmc;->g()Lblj;

    move-result-object v1

    iget-boolean v1, v1, Lblj;->g:Z

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lbmc;->g()Lblj;

    move-result-object v1

    iget-boolean v1, v1, Lblj;->f:Z

    if-eqz v1, :cond_0

    .line 86
    :cond_1
    :sswitch_1
    invoke-virtual {p0}, Lbmc;->g()Lblj;

    move-result-object v1

    iget-boolean v1, v1, Lblj;->d:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lbma;->d()Lblj;

    move-result-object v1

    iget-boolean v1, v1, Lblj;->d:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
