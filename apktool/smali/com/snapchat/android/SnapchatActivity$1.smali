.class final Lcom/snapchat/android/SnapchatActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapchatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lajv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapchatActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapchatActivity;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/snapchat/android/SnapchatActivity$1;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lmi;

    iget-object v1, p0, Lcom/snapchat/android/SnapchatActivity$1;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-static {}, Lnf;->a()Lnf;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmi;-><init>(Landroid/app/Activity;Lnf;)V

    return-object v0
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 202
    check-cast p2, Lajv;

    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity$1;->a:Lcom/snapchat/android/SnapchatActivity;

    iput-object p2, v0, Lcom/snapchat/android/SnapchatActivity;->mUser:Lajv;

    iget-object v0, p0, Lcom/snapchat/android/SnapchatActivity$1;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/SnapchatActivity;->a(Lajv;)V

    return-void
.end method

.method public final onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    return-void
.end method
