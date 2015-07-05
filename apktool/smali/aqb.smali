.class public abstract Laqb;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 34
    const v0, 0x7f0c02e3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0c0180

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 38
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Laqb;->a:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Laqb;->b:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Laqb;->c:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Laqb;->d:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Laqb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Laqb;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laqb;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    iget-object v0, p0, Laqb;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Laqb;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laqb;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laqb;->setCancelable(Z)V

    .line 59
    const/4 v0, -0x1

    iget-object v1, p0, Laqb;->c:Ljava/lang/String;

    new-instance v2, Laqb$1;

    invoke-direct {v2, p0}, Laqb$1;-><init>(Laqb;)V

    invoke-virtual {p0, v0, v1, v2}, Laqb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    const/4 v0, -0x2

    iget-object v1, p0, Laqb;->d:Ljava/lang/String;

    new-instance v2, Laqb$2;

    invoke-direct {v2, p0}, Laqb$2;-><init>(Laqb;)V

    invoke-virtual {p0, v0, v1, v2}, Laqb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 73
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method
