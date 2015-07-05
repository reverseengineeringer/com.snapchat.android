.class public Lapz;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lapz;->mMessage:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lapz;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lapz;->mMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lapz;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lapz;->setCancelable(Z)V

    .line 39
    const/4 v0, -0x1

    iget-object v1, p0, Lapz;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0195

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lapz$1;

    invoke-direct {v2, p0}, Lapz$1;-><init>(Lapz;)V

    invoke-virtual {p0, v0, v1, v2}, Lapz;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 47
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method
