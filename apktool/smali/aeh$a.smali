.class public final Laeh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Laeh;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Laeh;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Laeh$a;->a:Laeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Laeh$a;->b:Landroid/os/Bundle;

    .line 346
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/ui/ChannelView;)V
    .locals 3

    .prologue
    .line 354
    invoke-virtual {p1}, Lcom/snapchat/android/discover/ui/ChannelView;->getChannelPage()Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    .line 355
    iget-object v1, p0, Laeh$a;->b:Landroid/os/Bundle;

    sget-object v2, Lcom/snapchat/android/discover/model/ChannelPage;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 357
    iget-object v1, p0, Laeh$a;->b:Landroid/os/Bundle;

    const-string v2, "edition_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Laeh$a;->b:Landroid/os/Bundle;

    const-string v2, "edition_id"

    iget-object v0, v0, Lcom/snapchat/android/discover/model/ChannelPage;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    iget-object v0, p0, Laeh$a;->a:Laeh;

    iget-object v1, p0, Laeh$a;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Laeh;->a(Laeh;Landroid/os/Bundle;)V

    .line 362
    return-void
.end method
