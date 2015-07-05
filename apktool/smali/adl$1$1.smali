.class final Ladl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladl$1;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/model/ChannelPage;

.field final synthetic b:Ladl$b;

.field final synthetic c:Ladl$1;


# direct methods
.method constructor <init>(Ladl$1;Lcom/snapchat/android/discover/model/ChannelPage;Ladl$b;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Ladl$1$1;->c:Ladl$1;

    iput-object p2, p0, Ladl$1$1;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iput-object p3, p0, Ladl$1$1;->b:Ladl$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 289
    iget-object v0, p0, Ladl$1$1;->c:Ladl$1;

    iget-object v0, v0, Ladl$1;->d:Ladl;

    iget-object v0, v0, Ladl;->a:Laeg;

    iget-object v1, p0, Ladl$1$1;->c:Ladl$1;

    iget-object v1, v1, Ladl$1;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Ladl$1$1;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    const/4 v3, 0x0

    iget-object v4, p0, Ladl$1$1;->b:Ladl$b;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Laeg;->a(Landroid/widget/ImageView;Lcom/snapchat/android/discover/model/ChannelPage;ZLaeg$a;Landroid/os/Bundle;)Z

    .line 291
    return-void
.end method
