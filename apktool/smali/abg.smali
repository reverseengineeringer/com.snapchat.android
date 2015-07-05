.class public final Labg;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
    const v0, 0x7f0c000a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Labg;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    const v0, 0x7f0c0002

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    const/4 v1, -0x1

    new-instance v2, Labg$1;

    invoke-direct {v2, p0, p2}, Labg$1;-><init>(Labg;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, v2}, Labg;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 33
    const v0, 0x7f0c0058

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    const/4 v1, -0x2

    new-instance v2, Labg$2;

    invoke-direct {v2, p0}, Labg$2;-><init>(Labg;)V

    invoke-virtual {p0, v1, v0, v2}, Labg;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Lpp;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lpp;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    .line 44
    invoke-virtual {v0}, Lpp;->f()V

    .line 45
    return-void
.end method
